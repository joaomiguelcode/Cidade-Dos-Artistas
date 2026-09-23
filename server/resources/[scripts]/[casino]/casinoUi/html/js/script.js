// casinoUi NUI script.js
// Handles showing/hiding casino UI overlay with fade animations

window.addEventListener('message', function(event){
    const container = document.getElementById("container");
    const textDiv = document.getElementById("text");
    if (!container || !textDiv) return;
    if(event.data.action == "show"){
        textDiv.innerHTML = event.data.text || '';
        container.classList.remove("fadeOut");
        container.classList.add("fadeIn");
        container.style.opacity = 1;
    } else if(event.data.action == "hide"){
        container.classList.remove("fadeIn");
        container.classList.add("fadeOut");
        // After animation, hide and clear text
        setTimeout(function(){
            container.style.opacity = 0;
            textDiv.innerHTML = '';
        }, 1000); // match animation duration
    }
});