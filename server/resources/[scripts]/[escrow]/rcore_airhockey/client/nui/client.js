var frame = document.getElementById("gameframe");
var players = [];
var playerId = 0;
var maxScore = 3;

window.addEventListener('message', (event) => {
    let data = event.data
    if (data.action == 'navigate') {
        let frame = document.getElementById("gameframe");
        frame.src = data.url;
    }
    else if (data.action == 'unity') {
        frame.contentWindow.SendToUnity(data.fName, data.arg);
    }
    else if (data.action == 'javascript') {
        window[data.fName](data.a1, data.a2, data.a3, data.a4, data.a5, data.a6, data.a7, data.a8, data.a9, data.a10);
    }
    if (data.action == 'mugconvert') {
        ToDataURL(data.txdName, function (base64) {
            fetch(`https://${GetParentResourceName()}/mugcallback`, {
                method: "POST",
                headers: { "Content-Type": "application/json; charset=UTF-8" },
                body: JSON.stringify({
                    base64: base64,
                    handle: event.data.handle,
                    id: event.data.id
                })
            });
        });
    }
});

function ToDataURL(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.onload = function () {
        var reader = new FileReader();
        reader.onloadend = function () {
            callback(reader.result);
        }
        reader.readAsDataURL(xhr.response);
    };
    xhr.open("GET", url);
    xhr.responseType = "blob";
    xhr.send();
}

function ResizeWithPadding(topx, topy, bottomx, bottomy) {
    let w = screen.width;
    let h = screen.height;

    let sW = w;
    let sH = h;

    sW -= (w * topx);
    sW -= (w * 1.0) - (w * bottomx);

    sH -= (h * topy);
    sH -= (h * 1.0) - (h * bottomy);

    let frame = document.getElementById("gameframe");

    frame.style.width = (sW * 0.93) + "px";
    frame.style.height = (sH * 0.87) + "px";
    frame.style.marginLeft = (w * 1.7) * topx;
    frame.style.marginTop = (h * 1.9) * topy;
}

function RefreshPlayerLayout() {
    for (let i = 1; i <= 2; i++) {
        document.getElementById("p" + i + "name").innerHTML = players[i].name;
        document.getElementById("picon" + i).className = "paddle p" + players[i].icon + "icon"
        document.getElementById("row" + i).className = playerId == players[i].id ? "rowmine" : "row";
        document.getElementById("p" + i + "score").innerHTML = players[i].goals;
        document.getElementById("p" + i + "saves").innerHTML = players[i].saves;
        document.getElementById("p" + i + "mug").src = players[i].avatar;
        setTimeout(() => {
            var img = document.getElementById("p" + i + "mug")
            var isLoaded = img.complete && img.naturalHeight !== 0;
            if (!isLoaded) {
                img.src = defaultAvatar;
            }
        }, 100);
    }

    ToggleMatchPoint(players[1].goals == maxScore - 1 && players[2].goals == maxScore - 1);
}

function ToggleMatchPoint(toggle) {
    document.getElementById("matchpoint").style.display = toggle ? "block" : "none";
    if (toggle) {
        ShowUp(document.getElementById("matchpoint"));
    }
}

function ScoreChanged(pid, goals) {
    for (let i = 1; i <= 2; i++) {
        if (players[i].id == pid) {
            players[i].goals = goals;
            ShowUp(document.getElementById("p" + i + "score"));
        }
    }
    RefreshPlayerLayout();
}

function SavesChanged(pid, saves) {
    for (let i = 1; i <= 2; i++) {
        if (players[i].id == pid) {
            players[i].saves = saves;
            ShowUp(document.getElementById("p" + i + "saves"));
        }
    }
    RefreshPlayerLayout();
}

function FillPlayerData(p1name, p1avatar, p1icon, p1id, p2name, p2avatar, p2icon, p2id, localId, score) {
    players[1] = {
        name: p1name,
        avatar: p1avatar,
        icon: p1icon,
        id: p1id,
        goals: 0,
        saves: 0,
    };
    players[2] = {
        name: p2name,
        avatar: p2avatar,
        icon: p2icon,
        id: p2id,
        goals: 0,
        saves: 0,
    };
    playerId = localId
    maxScore = score;
    RefreshPlayerLayout();
}

function ToggleHockeyUI(visible) {
    document.getElementById("hockeyui").style.display = visible ? "block" : "none";
}

function ToggleGameInfo(visible) {
    document.getElementById("gameinfo").style.display = visible ? "block" : "none";
}

function SetPing(ping) {
    document.getElementById("pingRow").innerHTML = ping + " ms";
}

function ToggleLoading(loadingText) {
    document.getElementById("loading").style.display = loadingText !== undefined ? "block" : "none";
    document.getElementById("loadingtext").innerHTML = loadingText;
}

function ToggleBettingBar(visible, text) {
    var el = document.getElementById("betRow")
    el.style.display = visible ? "block" : "none"
    el.innerHTML = text
}

function ResetSession() {
    ToggleLoading();
    ToggleGameInfo();
    ToggleHockeyUI();
    ShowAnnounce();
    ShowCounter();
}

function ShowAnnounce(announceText) {
    let el = document.getElementById("wasted");
    el.style.display = announceText !== undefined ? "block" : "none";
    el.innerHTML = announceText;
}

function ShowCounter(counterText, color) {
    let el = document.getElementById("counter");
    el.innerHTML = counterText;
    el.style.display = counterText !== undefined ? "block" : "none";
    el.style.backgroundColor = color;
}

function PlayPuckSound() {
    var rnd = Math.floor(Math.random() * 7) + 1;
    var audio = new Audio();
    audio.src = "puck" + rnd + ".wav";
    audio.volume = 0.1;
    audio.play();
}

function PlayPaddleSound() {
    var rnd = Math.floor(Math.random() * 2) + 1;
    var audio = new Audio();
    audio.src = "paddle" + rnd + ".wav";
    audio.volume = 0.1;
    audio.play();
}

function PlayGoalSound() {
    var audio = new Audio();
    audio.src = "goal.wav";
    audio.volume = 0.1;
    audio.play();
}

function ShowUp(div) {
    div.animate([
        { transform: "scale(1)" },
        { transform: "scale(1.2)" },
        { transform: "scale(1)" }
    ], {
        duration: 250,
        easing: "ease-in-out",
        iterations: 1
    });
}

let rx = window.screen.width
let ry = window.screen.height
let res = ry / rx

ResizeWithPadding(0.07 * res, 0.045 + (0.01 * res), 0.97 - (0.03 * res), 0.98 - (0.02 * res));

document.onmousemove = function (e) {
    var x = e.clientX * 1.0 / screen.width;
    var y = e.clientY * 1.0 / screen.height;
    frame.contentWindow.MouseCoords = [x, y];
}

var defaultAvatar = "data:image/png;base64,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"

ToggleHockeyUI(false);
ToggleGameInfo(false);
ToggleMatchPoint(false);
ToggleBettingBar(false, "");
