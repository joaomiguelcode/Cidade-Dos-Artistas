$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item.type === "ui") {
                var container = $('#container')[0];
                var audio = $('#audio')[0];
                if (item.display) {
                    if (!container.src && item.video) {
                        container.src = item.video;
                    }
                    if (!audio.src && item.audio) {
                        audio.src = item.audio;
                    }
                    $('#container').show();
                    if (container.src) container.play();
                    if (audio.src) audio.play();
                } else{
                    $('#container').hide();
                    container.pause();
                    audio.pause();
                }
            }
        })
    }
})