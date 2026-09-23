
$(function(){
	window.onload = (e) => {
		$.post("https://bodycam/GetConfig", JSON.stringify({}));
		const bcaminfo = document.getElementById('top-right-text');
		timetext = document.getElementById('time-text');
		const customimage = document.getElementById('custimg');
		var img = new Image();
		theimage = "";
		displayimage = false;
		bcaminfo.style.display = 'none';
		customimage.style.display = 'none';

		const audio = $('#beepbeep')[0]; // Get the DOM element, not the jQuery object
		audio.volume = .01;
		var playbeep = false;

		showing = false;
		CURRTIME = "";
		CURRINFO = "";
		var today = new Date();

		var day = today.getDate();
		var month = today.getMonth() + 1;
		var year = today.getFullYear();
		function showinfo(yes){
			bcaminfo.style.display = 'flex';
			if(displayimage){
				customimage.style.display = 'flex';
			}
			showing = true;
			CURRINFO = yes;
			//bcaminfo.innerHTML = "<p>" + year + '-' + day  + '-' +  month 
			//+ " " + CURRTIME + 
			//"<br/>" + yes.fname + " " + yes.lname + "</p>";
			callsign = "";
			if(CURRINFO.label != 'NO CALLSIGN'){
				callsign = "[" + CURRINFO.label + "]";
			}
			//bcaminfo.innerHTML = "<p>" + "<p>" + today.getFullYear() + '-' + month  + '-' +  today.getDate() 
			//+ " " + CURRTIME + "<br/>" + CURRINFO.fname + " " + CURRINFO.lname + "</p>"

			bcaminfo.innerHTML = "<p>Rec&nbsp;<i class='fa fa-circle text-danger Blink'></i>&nbsp;XION CHASE-CAM&trade;<br />" + CURRINFO.rank + " " + CURRINFO.lname + callsign +"<br/>"+ CURRINFO.department +"<br/><span id='time-text'></span></p>";
			timetext = document.getElementById('time-text');
			if(playbeep){
				audio.play();
			}
		}
		function hideinfo(){
			showing = false;
			bcaminfo.style.display = 'none';
			if(displayimage){
				customimage.style.display = 'none';
			}
			if(playbeep){
				audio.play();
			}
		}
		
		img.onload = function() {
			$('#custimg').attr('src', "https://cfx-nui-bodycam/web/" + theimage);
			displayimage = true;
		};

		img.onerror = function() {
			displayimage = false;
		};

        /* 'links' the js with the Nui message from main.lua */
		window.addEventListener('message', (event) => {
            
			var item = event.data;
			if (item !== undefined && item.type === "show") {
                showinfo(item.info)
			}
			if (item !== undefined && item.type === "hide") {
                hideinfo()
			}
			if (item !== undefined && item.type === "image") {
                theimage = item.image;
				thebeep = item.beep;
				img.src = "https://cfx-nui-bodycam/web/" + theimage;
				audio.src = "https://cfx-nui-bodycam/web/" + thebeep;
				playbeep = item.playbeep;
				//$('#custimg').attr('src', "https://cfx-nui-bodycam/web/" + theimage);
			}
			if (item !== undefined && item.type === "beep") {
                thebeep = item.beep;
				audio.src = "https://cfx-nui-bodycam/web/" + thebeep;
				//$('#custimg').attr('src', "https://cfx-nui-bodycam/web/" + theimage);
			}
			if (item !== undefined && item.type === "time") {
                CURRTIME = item.time;
				if (showing) {
					month = today.getMonth() + 1;
					if(month < 10){month = "0" + month}
					callsign = "";
					//if(CURRINFO.label != 'NO CALLSIGN'){
					//	callsign = "[" + CURRINFO.label + "]";
					//}
					//bcaminfo.innerHTML = "<p>" + "<p>" + today.getFullYear() + '-' + month  + '-' +  today.getDate() 
					//+ " " + CURRTIME + "<br/>" + CURRINFO.fname + " " + CURRINFO.lname + "</p>"

					//bcaminfo.innerHTML = "<p>Rec&nbsp;<i class='fa fa-circle text-danger Blink'></i>&nbsp;XION CHASE-CAM&trade;<br />" + CURRINFO.rank + " " + CURRINFO.fname + " " + CURRINFO.lname + callsign +"<br/>"+ CURRINFO.department +"<br/><span id='time-text'>"+ today.getFullYear() + '-' + month  + '-' +  today.getDate() 
					//+ " " + CURRTIME + "</span></p>";
					timetext.innerHTML = ""+ today.getFullYear() + '-' + month  + '-' +  today.getDate() + " " + CURRTIME + "";
				}
			}
			
		});
	};
});



let ButtonsData = [];
let Buttons = [];
let Button = [];

const OpenMenu = (data) => {
    DrawButtons(data)
}

const CloseMenu = () => {
    for (let i = 0; i < ButtonsData.length; i++) {
        let id = ButtonsData[i].id
        $(".button").remove();
    }
    ButtonsData = [];
    Buttons = [];
    Button = [];
};

const DrawButtons = (data) => {
    ButtonsData = data
    for (let i = 0; i < ButtonsData.length; i++) {
        let header = ButtonsData[i].header
        let message = ButtonsData[i].txt
        let id = i
        let element

        element = $(`
            <div class="button" id=`+id+`>
                <div class="header" id=`+id+`>`+header+`</div>
                <div class="txt" id=`+id+`>`+message+`</div>
            </div>`
        );
        $('#buttons').append(element);
        Buttons[id] = element
        if (ButtonsData[i].params) {
            Button[id] = ButtonsData[i].params
        }
    }
};

$(document).click(function(event){
    let $target = $(event.target);
    if ($target.closest('.button').length && $('.button').is(":visible")) {
        let id = event.target.id;
        if (!Button[id]) return
        PostData(id)
    }
})

const PostData = (id) => {
    $.post(`https://bodycam/dataPost`, JSON.stringify(Button[id]))
    return CloseMenu();
}

const CancelMenu = () => {
    $.post(`https://bodycam/cancel`)
    return CloseMenu();
}

window.addEventListener("message", (evt) => {
    const data = evt.data
    const info = data.data
    const action = data.action
    switch (action) {
        case "OPEN_MENU":
            return OpenMenu(info);
        case "CLOSE_MENU":
            return CloseMenu();
        default:
            return;
    }
})


document.onkeyup = function (event) {
    event = event || window.event;
    var charCode = event.keyCode || event.which;
    if (charCode == 27) {
        CancelMenu();
    }
};