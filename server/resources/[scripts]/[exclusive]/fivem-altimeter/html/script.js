let altimeterData = {
  altitude: 0,
  verticalSpeed: 0,
  time: "00:00",
  coords: { x: 0, y: 0, z: 0 },
  heading: 0,
  compassDir: "N",
  isAirborne: false,
  showHUD: false,
}

// Elementos DOM
const altimeterContainer = document.getElementById("altimeter-container")
const altitudeElement = document.getElementById("altitude")
const airspeedElement = document.getElementById("airspeed")
const timeElement = document.getElementById("time")
const coordsElement = document.getElementById("coords")
const compassNeedle = document.getElementById("compass-needle")
const compassDirection = document.getElementById("compass-direction")
const playerMarker = document.getElementById("player-marker")

// Função para calcular velocidade em m/s
function calculateAirspeed() {
  // Converter velocidade vertical de ft/s para m/s
  const airspeedMS = Math.abs(altimeterData.verticalSpeed) * 0.3048
  return Math.round(airspeedMS * 10) / 10 // Uma casa decimal
}

// Função para atualizar a interface
function updateUI(data) {
  altimeterData = { ...altimeterData, ...data }

  // Atualizar altitude em pés
  altitudeElement.textContent = altimeterData.altitude.toLocaleString()

  // Atualizar airspeed em m/s
  const airspeedMS = calculateAirspeed()
  airspeedElement.textContent = airspeedMS

  // Colorir airspeed baseado na velocidade
  if (airspeedMS > 15) {
    airspeedElement.style.color = "#ff4444"
    airspeedElement.classList.add("critical")
  } else if (airspeedMS > 8) {
    airspeedElement.style.color = "#ffaa00"
    airspeedElement.classList.remove("critical")
  } else {
    airspeedElement.style.color = "#00ff00"
    airspeedElement.classList.remove("critical")
  }

  // Atualizar horário
  timeElement.textContent = altimeterData.time

  // Atualizar coordenadas
  coordsElement.textContent = `X: ${altimeterData.coords.x}, Y: ${altimeterData.coords.y}`

  // Atualizar bússola
  compassNeedle.style.transform = `translate(-50%, -50%) rotate(${altimeterData.heading}deg)`
  compassDirection.textContent = altimeterData.compassDir

  // Alerta para altitude baixa
  if (altimeterData.altitude < 500 && altimeterData.verticalSpeed < -10) {
    altitudeElement.classList.add("critical")
  } else {
    altitudeElement.classList.remove("critical")
  }

  // Mostrar/ocultar HUD
  if (altimeterData.showHUD) {
    altimeterContainer.classList.remove("hidden")
  } else {
    altimeterContainer.classList.add("hidden")
  }
}

// Listener para mensagens do cliente
window.addEventListener("message", (event) => {
  const data = event.data

  switch (data.type) {
    case "updateAltimeter":
      updateUI(data.data)
      break

    case "showAltimeter":
      if (data.show) {
        altimeterContainer.classList.remove("hidden")
      } else {
        altimeterContainer.classList.add("hidden")
      }
      break
  }
})

// Inicialização
document.addEventListener("DOMContentLoaded", () => {
  console.log("Altímetro Militar carregado")
})
