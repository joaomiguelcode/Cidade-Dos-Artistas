/**
 * CDA OUTLINE - Painel NUI Tático & Administrativo
 * Estilo e Padrão Visual: Hensa Studio [PanelMockup-main]
 */

(() => {
  'use strict';

  // ==================== ESTADO DA APLICAÇÃO ====================
  const state = {
    isOpen: false,
    isActive: false,
    user: {
      name: "Operador Tático",
      id: 1,
      group: {
        name: "Admin",
        label: "Administrador",
        badgeColor: "#e50914"
      }
    },
    settings: {
      distance: 80.0,
      alpha: 220,
      shader: 1,
      highlightSelf: true,
      neonGlow: true,
      groundRing: true,
      pulse: false,
      hideInVehicle: false,
      hideDead: false
    },
    stats: {
      targetsCount: 0,
      groupsCount: 0
    },
    canView: [],
    searchQuery: ""
  };

  // ==================== ELEMENTOS DO DOM ====================
  const elements = {
    app: document.getElementById("app"),
    btnMasterToggle: document.getElementById("btn-master-toggle"),
    masterToggleText: document.getElementById("master-toggle-text"),
    btnClose: document.getElementById("btn-close"),
    
    userName: document.getElementById("user-name"),
    userPassport: document.getElementById("user-passport"),
    userGroupDot: document.getElementById("user-group-dot"),
    userGroupLabel: document.getElementById("user-group-label"),

    statStatusBadge: document.getElementById("stat-status-badge"),
    statTargetsCount: document.getElementById("stat-targets-count"),
    statGroupsCount: document.getElementById("stat-groups-count"),
    statDistanceVal: document.getElementById("stat-distance-val"),

    sliderDistance: document.getElementById("slider-distance"),
    valDistance: document.getElementById("val-distance"),

    sliderAlpha: document.getElementById("slider-alpha"),
    valAlpha: document.getElementById("val-alpha"),

    shaderOptGlow: document.getElementById("shader-opt-glow"),
    shaderOptSolid: document.getElementById("shader-opt-solid"),

    toggleHighlightSelf: document.getElementById("toggle-highlight-self"),
    toggleNeonGlow: document.getElementById("toggle-neon-glow"),
    toggleGroundRing: document.getElementById("toggle-ground-ring"),
    togglePulse: document.getElementById("toggle-pulse"),
    toggleHideVehicle: document.getElementById("toggle-hide-vehicle"),
    toggleHideDead: document.getElementById("toggle-hide-dead"),

    inputSearchGroups: document.getElementById("input-search-groups"),
    groupsList: document.getElementById("groups-list"),
    badgeGroupsTotal: document.getElementById("badge-groups-total")
  };

  // ==================== COMUNICAÇÃO NUI (FIVEM) ====================
  const resourceName = window.GetParentResourceName ? window.GetParentResourceName() : "cda_outline";

  async function fetchNui(callbackName, data = {}) {
    try {
      const response = await fetch(`https://${resourceName}/${callbackName}`, {
        method: "POST",
        headers: { "Content-Type": "application/json; charset=UTF-8" },
        body: JSON.stringify(data)
      });
      return await response.json();
    } catch (err) {
      return null;
    }
  }

  // Debounce para salvamento de configurações em tempo real
  let saveTimeout = null;
  function scheduleSaveSettings() {
    if (saveTimeout) clearTimeout(saveTimeout);
    saveTimeout = setTimeout(() => {
      fetchNui("saveSettings", {
        distance: Number(state.settings.distance),
        alpha: Number(state.settings.alpha),
        shader: Number(state.settings.shader),
        highlightSelf: Boolean(state.settings.highlightSelf),
        neonGlow: Boolean(state.settings.neonGlow),
        groundRing: Boolean(state.settings.groundRing),
        pulse: Boolean(state.settings.pulse),
        hideInVehicle: Boolean(state.settings.hideInVehicle),
        hideDead: Boolean(state.settings.hideDead)
      });
    }, 120);
  }

  // ==================== TEMA DINÂMICO (VRP COMPATÍVEL) ====================
  function hexToRgb(hex) {
    if (!hex) return null;
    const cleanHex = hex.replace("#", "");
    if (cleanHex.length === 3) {
      return {
        r: parseInt(cleanHex[0] + cleanHex[0], 16),
        g: parseInt(cleanHex[1] + cleanHex[1], 16),
        b: parseInt(cleanHex[2] + cleanHex[2], 16)
      };
    }
    const match = /^([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(cleanHex);
    return match ? {
      r: parseInt(match[1], 16),
      g: parseInt(match[2], 16),
      b: parseInt(match[3], 16)
    } : null;
  }

  function applyTheme(mainHex) {
    const rgb = hexToRgb(mainHex);
    if (!rgb) return;
    const root = document.documentElement;
    const toVar = (c) => `${c.r} ${c.g} ${c.b}`;
    
    // Cor principal
    root.style.setProperty("--main", toVar(rgb));
    // Hover: 25% mais escuro
    root.style.setProperty("--mainHover", toVar({
      r: Math.round(rgb.r * 0.75),
      g: Math.round(rgb.g * 0.75),
      b: Math.round(rgb.b * 0.75)
    }));
    // Light: 40% mais claro com branco
    root.style.setProperty("--mainLight", toVar({
      r: Math.round(rgb.r + (255 - rgb.r) * 0.4),
      g: Math.round(rgb.g + (255 - rgb.g) * 0.4),
      b: Math.round(rgb.b + (255 - rgb.b) * 0.4)
    }));
    // Fundo from e to derivados
    root.style.setProperty("--from", toVar({
      r: Math.round(rgb.r * 0.12),
      g: Math.round(rgb.g * 0.12),
      b: Math.round(rgb.b * 0.13)
    }));
    root.style.setProperty("--to", toVar({
      r: Math.round(rgb.r * 0.2),
      g: Math.round(rgb.g * 0.22),
      b: Math.round(rgb.b * 0.22)
    }));
  }

  async function checkServerTheme() {
    try {
      const response = await fetch(`https://vrp/Theme`, {
        method: "POST",
        headers: { "Content-Type": "application/json; charset=UTF-8" },
        body: JSON.stringify({})
      });
      const data = await response.json();
      if (data && data.main) {
        applyTheme(data.main);
      }
    } catch (e) {
      // Tema fallback padrão
    }
  }

  // ==================== ATUALIZAÇÃO DA INTERFACE ====================
  function updateUIState() {
    // 1. Botão Master & Status
    if (state.isActive) {
      elements.btnMasterToggle.classList.add("active");
      elements.masterToggleText.textContent = "SISTEMA ATIVADO";
      elements.statStatusBadge.textContent = "ATIVO / EM MONITORAMENTO";
      elements.statStatusBadge.className = "status-badge-active";
    } else {
      elements.btnMasterToggle.classList.remove("active");
      elements.masterToggleText.textContent = "ATIVAR SISTEMA";
      elements.statStatusBadge.textContent = "DESATIVADO (STANDBY)";
      elements.statStatusBadge.className = "status-badge-inactive";
    }

    // 2. Operador
    elements.userName.textContent = state.user.name || "Operador Desconhecido";
    elements.userPassport.textContent = `ID #${state.user.id || 0}`;
    elements.userGroupLabel.textContent = state.user.group?.label || state.user.group?.name || "Membro";
    const badgeColor = state.user.group?.badgeColor || "#ff0033";
    elements.userGroupDot.style.backgroundColor = badgeColor;
    elements.userGroupDot.style.boxShadow = `0 0 8px ${badgeColor}`;

    // 3. Métricas
    elements.statTargetsCount.textContent = state.stats.targetsCount ?? 0;
    elements.statGroupsCount.textContent = state.stats.groupsCount ?? state.canView.length;
    elements.statDistanceVal.textContent = Math.round(state.settings.distance);
    elements.badgeGroupsTotal.textContent = `${state.canView.length} Grupos`;

    // 4. Sliders
    elements.sliderDistance.value = state.settings.distance;
    elements.valDistance.textContent = `${Math.round(state.settings.distance)} m`;

    elements.sliderAlpha.value = state.settings.alpha;
    const alphaPct = Math.round((state.settings.alpha / 255) * 100);
    elements.valAlpha.textContent = `${state.settings.alpha} (${alphaPct}%)`;

    // 5. Shader Segmented Toggle
    if (Number(state.settings.shader) === 1) {
      elements.shaderOptGlow.classList.add("active");
      elements.shaderOptSolid.classList.remove("active");
    } else {
      elements.shaderOptGlow.classList.remove("active");
      elements.shaderOptSolid.classList.add("active");
    }

    // 6. Toggles Táticos
    const toggleMap = [
      { el: elements.toggleHighlightSelf, key: "highlightSelf" },
      { el: elements.toggleNeonGlow, key: "neonGlow" },
      { el: elements.toggleGroundRing, key: "groundRing" },
      { el: elements.togglePulse, key: "pulse" },
      { el: elements.toggleHideVehicle, key: "hideInVehicle" },
      { el: elements.toggleHideDead, key: "hideDead" }
    ];

    toggleMap.forEach(({ el, key }) => {
      if (state.settings[key]) {
        el.classList.add("active");
      } else {
        el.classList.remove("active");
      }
    });

    // 7. Lista de Grupos Autorizados
    renderGroups();
  }

  // Renderização da lista de grupos com suporte a filtro
  function renderGroups() {
    elements.groupsList.innerHTML = "";
    const filter = (state.searchQuery || "").trim().toLowerCase();

    const filtered = state.canView.filter(grp => {
      if (!filter) return true;
      const label = (grp.label || "").toLowerCase();
      const name = (grp.name || "").toLowerCase();
      return label.includes(filter) || name.includes(filter);
    });

    if (filtered.length === 0) {
      const emptyEl = document.createElement("div");
      emptyEl.className = "empty-groups";
      emptyEl.textContent = filter
        ? "Nenhum grupo encontrado com este filtro."
        : "Nenhum grupo configurado para visualização.";
      elements.groupsList.appendChild(emptyEl);
      return;
    }

    filtered.forEach(grp => {
      const card = document.createElement("div");
      card.className = "group-card";

      const colorHex = grp.colorHex || (grp.color ? `rgb(${grp.color.join(",")})` : "#00e5ff");

      card.innerHTML = `
        <div class="group-lead">
          <div class="group-color-indicator" style="color: ${colorHex};">
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z" />
            </svg>
          </div>
          <div class="group-info-text">
            <span class="group-label-name">${grp.label || grp.name}</span>
            <span class="group-system-name">Identificador: ${grp.name}</span>
          </div>
        </div>
        <div class="group-status-pill">
          <span class="preview-chip" style="background-color: ${colorHex}; color: ${colorHex};"></span>
          <span>Sincronizado</span>
        </div>
      `;

      elements.groupsList.appendChild(card);
    });
  }

  // ==================== CONTROLE DE ABERTURA / FECHAMENTO ====================
  function openNUI(payload) {
    state.isOpen = true;
    state.isActive = Boolean(payload.active);
    
    if (payload.user) {
      state.user = {
        name: payload.user.name || state.user.name,
        id: payload.user.id || state.user.id,
        group: payload.user.group || state.user.group
      };
    }

    if (payload.settings) {
      state.settings = {
        ...state.settings,
        ...payload.settings
      };
    }

    if (Array.isArray(payload.canView)) {
      state.canView = payload.canView;
    }

    if (payload.stats) {
      state.stats = {
        ...state.stats,
        ...payload.stats
      };
    }

    updateUIState();
    elements.app.classList.add("visible");
  }

  function closeNUI() {
    state.isOpen = false;
    elements.app.classList.remove("visible");
    fetchNui("close");
  }

  function handleMasterToggle() {
    state.isActive = !state.isActive;
    updateUIState();
    fetchNui("toggle");
  }

  // ==================== EVENT LISTENERS ====================
  // Botão Master Toggle
  elements.btnMasterToggle.addEventListener("click", (e) => {
    e.stopPropagation();
    handleMasterToggle();
  });

  // Botão Fechar
  elements.btnClose.addEventListener("click", (e) => {
    e.stopPropagation();
    closeNUI();
  });

  // Fechar com tecla Escape
  window.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && state.isOpen) {
      e.preventDefault();
      closeNUI();
    }
  });

  // Slider Distância
  elements.sliderDistance.addEventListener("input", (e) => {
    const val = Number(e.target.value);
    state.settings.distance = val;
    elements.valDistance.textContent = `${val} m`;
    elements.statDistanceVal.textContent = val;
    scheduleSaveSettings();
  });

  // Slider Alpha
  elements.sliderAlpha.addEventListener("input", (e) => {
    const val = Number(e.target.value);
    state.settings.alpha = val;
    const pct = Math.round((val / 255) * 100);
    elements.valAlpha.textContent = `${val} (${pct}%)`;
    scheduleSaveSettings();
  });

  // Seletor de Shader
  elements.shaderOptGlow.addEventListener("click", () => {
    state.settings.shader = 1;
    elements.shaderOptGlow.classList.add("active");
    elements.shaderOptSolid.classList.remove("active");
    scheduleSaveSettings();
  });

  elements.shaderOptSolid.addEventListener("click", () => {
    state.settings.shader = 0;
    elements.shaderOptSolid.classList.add("active");
    elements.shaderOptGlow.classList.remove("active");
    scheduleSaveSettings();
  });

  // Toggles Táticos
  const toggleCards = [
    { el: elements.toggleHighlightSelf, key: "highlightSelf" },
    { el: elements.toggleNeonGlow, key: "neonGlow" },
    { el: elements.toggleGroundRing, key: "groundRing" },
    { el: elements.togglePulse, key: "pulse" },
    { el: elements.toggleHideVehicle, key: "hideInVehicle" },
    { el: elements.toggleHideDead, key: "hideDead" }
  ];

  toggleCards.forEach(({ el, key }) => {
    el.addEventListener("click", () => {
      state.settings[key] = !state.settings[key];
      if (state.settings[key]) {
        el.classList.add("active");
      } else {
        el.classList.remove("active");
      }
      scheduleSaveSettings();
    });
  });

  // Campo de Pesquisa de Grupos
  elements.inputSearchGroups.addEventListener("input", (e) => {
    state.searchQuery = e.target.value || "";
    renderGroups();
  });

  // ==================== LISTENER NUI MESSAGE ====================
  window.addEventListener("message", (event) => {
    const data = event.data;
    if (!data) return;

    if (data.action === "open") {
      openNUI(data);
    } else if (data.action === "close") {
      state.isOpen = false;
      elements.app.classList.remove("visible");
    } else if (data.action === "updateStats") {
      if (data.active !== undefined) {
        state.isActive = Boolean(data.active);
      }
      if (data.targetsCount !== undefined) {
        state.stats.targetsCount = Number(data.targetsCount);
      }
      updateUIState();
    }
  });

  // ==================== INICIALIZAÇÃO & MOCK DEV ====================
  document.addEventListener("DOMContentLoaded", () => {
    checkServerTheme();

    // Se aberto diretamente no navegador fora do FiveM, carrega dados mock para testes
    const isBrowserDev = !window.invokeNative && (!window.GetParentResourceName || window.GetParentResourceName() === "cda_outline");
    if (isBrowserDev && window.location.protocol !== "nui:") {
      setTimeout(() => {
        openNUI({
          active: true,
          user: {
            name: "John Santos",
            id: 1,
            group: {
              name: "Owner",
              label: "Direção / Dono",
              badgeColor: "#ff0033"
            }
          },
          settings: {
            distance: 80.0,
            alpha: 220,
            shader: 1,
            highlightSelf: true,
            neonGlow: true,
            groundRing: true,
            pulse: true,
            hideInVehicle: false,
            hideDead: false
          },
          stats: {
            targetsCount: 4,
            groupsCount: 8
          },
          canView: [
            { name: "Owner", label: "Direção / Dono", color: [255, 0, 50], colorHex: "#ff0032" },
            { name: "Developer", label: "Desenvolvedor", color: [0, 229, 255], colorHex: "#00e5ff" },
            { name: "Admin", label: "Administrador", color: [255, 35, 35], colorHex: "#ff2323" },
            { name: "Super-Moderador", label: "Super Moderador", color: [255, 120, 0], colorHex: "#ff7800" },
            { name: "Moderador", label: "Moderador", color: [255, 170, 0], colorHex: "#ffaa00" },
            { name: "Suporte", label: "Suporte", color: [0, 230, 118], colorHex: "#00e676" },
            { name: "Police", label: "Polícia Militar", color: [30, 144, 255], colorHex: "#1e90ff" },
            { name: "Paramedic", label: "Paramédico / SAMU", color: [0, 229, 255], colorHex: "#00e5ff" }
          ]
        });
      }, 200);
    }
  });

})();
