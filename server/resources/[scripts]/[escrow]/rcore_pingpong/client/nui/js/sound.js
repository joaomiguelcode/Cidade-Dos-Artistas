var audio;

function play(audioCoords, audioRot, audioSource, pedCoord, pedRot, volume) {

	audio = new Howl({
		src: audioSource,
		/*onplay: function () {
			console.log("onplay")
		},
		onload: function () {
			console.log("onload")
		},
		onstop: function () {
			console.log("onstop")
		},
		onend: function () {
			console.log("onend")
		},
		onloaderror: function () {
			console.log("onloaderror")
		},
		onplayerror: function () {
			console.log("onplayerror")
		}*/
	});

	updateListerPos(pedCoord, pedRot, false)
	
	audio.pos(audioCoords.x, audioCoords.y, audioCoords.z);
	audio.orientation(audioRot.x, audioRot.y, audioRot.z)
	audio.volume(volume);
	audio.play();
	audio.pannerAttr({
		panningModel: 'equalpower',
		refDistance: 0.01,
		rolloffFactor: 40,
		distanceModel: 'linear'
	})
	
	
}

function updateListerPos(pedCoord, pedRot, isMute) {
	audio.mute(isMute)
	Howler.pos(pedCoord.x, pedCoord.y, pedCoord.z);
	Howler.orientation(pedRot.x, pedRot.y, pedRot.z, 0, 1, 0);
}

window.addEventListener('message', function (event) {
	if (event.data.transactionType == "start") {
		play(event.data.audioCoord, event.data.audioRot, event.data.audioSource, event.data.pedCoord, event.data.pedRot, event.data.volume);
	}

	if (event.data.transactionType == "update") {
		updateListerPos(event.data.pedCoord, event.data.pedRot, event.data.mute);
	}

	if (event.data.transactionType == "stop") {
		audio.stop()
	}

	if (event.data.transactionType == "mute") {
		audio.mute(true)
	}
})