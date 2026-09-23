var players = [];
var playerId = 0;
var maxScore = 3;
const defaultAvatar = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADYAAAA8CAIAAACivN7sAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAABLsSURBVGhDlZrpklxHWobPfurU3uqWJY+NBzPAeAIH3AYREATEOGLYL4wL4AdcADG/ZiKQccDI2CCQPJYltVb33tW1n53n/bK6ui3bAj6nTuXJk8ub357Z9n/+T/8YeH6SdOI4bhsf8vymqvLGq9NO7PttWdZ15dd1EwZpt9vv97udTieKkjzPz87OXrx48cUXXzx48ODhw4e0lEXVtPRv6qaKoyRN0729vd98/4c/Ef34vffeYzjz03MymRRF0Ro1tReGIXNSB0xZlkHoBYHXeC09/X/4+78LgiAFTpwKYtACi0XKukg7oed5BpHGqNcd7ezsag3Pm80WT58+BdyjR48At7+/f3J82jTaYhBErFRVFd2YOcuymzd333///Q9+8uMPP/zwgw9+96239sLIn06ns9lstVrRk/lhUJIkzNDWXlUXYeiHYcBO6RD+1V/8NI3jLM14+mFgu+GfFyVhHEeMKcuibv0kzUbj8fjGTtrpMPeT/aefff75r+5+ev/Bg5evXk0uph5DI9Zhs90k7URxEoQRpW7asq5mi8XZ+dlqvc562d6NvZ3xDqtIYg0sbHyvBVAUsiOQ0Q5iJghbr22aOvzbv/kIcMguoY1BoS+IYRAnSNlDCG3gdzpd+DcajaMoXi6XMO/urz6Fvvzy4cnJCbIIw7jX62WdXpZ1UQaeaUrJYAycbD1vtVyfn5/DNpgwHo13d3eHg2GnkwZ+gFjruva8FoCsK5i+F8X8eq2PPLzwr//8zwJQw7fAr8qqrRs0AN7VsK8svDDodntsemd3z/ODk5PT//j83p1//viTTz558uTJfL5AmmhIN+uniRSUPWyeYQxXETpsRfZVXS9Xq8VyuVguWDZO4/FoyMxpKuF6Td02lc9UEaooYwCfB4dV2vAvf/YnvMMGOMZENXz3gEmlAmMYR7Cn2+vD1oODo3v3/uuXv/jlxx9/fP/+r1kO3sPgOErhFjPI1pAC6mhPVBEVFiNVZ9stinV2ejafzeqq3hmPs6zTzTr6VNewo8J6PJOtB1NpMzBNG/70T/8whLV+yObYLjKu27oCXlXSmnRSbLiT9eez5eef3btz518+vnPn66+/Lss2SSLwSa69gWk6kooEDibAl0bzeaYqoVgaiyWtt16vF4vFfD5fLmaIdW9vdzDoA2e1WpZlzubkDhgpLQVGJV382Ud/jJ6KByHMZbuYOryvqbJwr99PknS1WD9+sv9v/3r37t1Pnz97zuIoHsaDpNiSoUHfGKtyWYfA6JVVEeCu8GppFifYX1us87zI16sl89+4cQOIKAcrVjANfAZBmsjujMKPPvqjCMszMTF1TRsgvZbp0Pp+t9e0/uHhyX/fe/DZv//nVw8fXVwswDccjns9pk6dSruxmpT5tQZEVQWPQjMgcCtoKPaADEEII6MoGo0G4/Eo62YoMDstqkoG2hpEJOB5CFtqiTs0uL65XXEQNcIIIGYp8/zo8PjZs2enp6d0yrIY4fLJcMjzObIZhFDkt8ZN7TbBl8m5ljhqpIObHI1GWdbDjr9+dfDlr7/a3392cTH1vRCHYNMylROFiIqmrtkrKgt4mQkYnQcOsE10dL0qzo7PDl4enJ+cNWUz6A56zBXFIVZgk2m+usa1WGlc8Zsap0ElQcroIt4F9lTqBu9RD0DjsB4+evzlw0cHR4dFJdPEfbvdmqkIJ9MH5mJMm64g8gVHqt5V2RBICHRnZ5Plck0fbBiJsQZbZBmIRhP0hmwmxwMURnrNPK4DdYg6kyMl4iWMfPz48devDheLJaPQWDrDSDO4DWmrQgk+nl6Lg+KJj0RtvMbHUCZnk8nZxXK+hNsJ/gX9Q6VZCB4ROogN4EFhrZUJXGVb6qrA57ndb5ZUvCXcd9nqbLl4dXhwcHw0mU5XRc5XvJvbTC0oInGVJlP1DfEKwU5sPi9WcrfLZZ6vcQrmBUgyKkQGI2P5qNAnxBH4NY7pvvGkOOHiaummVcQBApYvH+37dVGu5gvKGhktlrikLb+RtnuiIVVdViiWTMjaeaVuDG9W+fJiNpktpnm5DiIfW0a3It+DN+V6pZBggSFk6bpsKU3liWebJwUtbHGxTU2JvSBldNV4ZS1tbrxICu2t8YrzBUsTty20aHGZLt4AKfNrUQWHvSU8lOImvMEMCcHA4ZUxrfz+1qsYvy+FwH4k8W8+VcGlGzvFRRk6barwdIKTUHJCS16XOUhYtKpk+2IhzG8rRXH6OKLuXvnME3xrIisiWCPlkkYh+SY5ubyJ/EbhxiG1eovDQ2AbUYIpt+iNLqFIRUOegC81Qp5IK9i8mOa5ig0WT4EFOAKrDcapynK3hDA2tTeSG7NBe0WCqx/LLE1WKxjiVgGAYnZRGMdKCVpNRuxAxSBuB0NsBY29WsND9+QKVL1amNRB2cNrhGiRuoOKeCn2e8V+LSRubKRnHz0tvVqX61wQeYEcRFfZQqSioUau3ejKY/3fyaYvUSxXp4KcWEHatiGTZG1HBXFR3NG6W0FDvLsnasi+GKQx1qL5mdc2Yn0vib7qfp14/UaLqRNTcNIwXa9ycOgXj0kR5yRcA7bhiFsFlG4xQdTKRtu6beuKXIv7ZKM23a5X3kCuz2u0nRbaQhQXQAZ+45EaCa35Eq+eO21zXeEwKZ0YKbZuCP3APjZTK6CruIBkPkR59bXCaCu4w9CilxU+5ZIfzkuhYaOI2/nNerDO5WyOIpITmfNuAoZsd0OFV4gx1MnnhkYEK6IIHRAr7d9JbobXqUZxtW2q+rkiHA+BWO1gIxJy0CGrIqgqYJjL2+ySZMz5vM06KCn5prkYiMRpd7xDGfb6nEfYNo3WD5fkyhWZGX2HJRFh8KgWULARjwK+zTeI1NknkJKYRDJ5AgG4EbWzFXN8wRYQ5BbbVhijPJRMlKRXOZIQOCZ8m+Qqvos4IxsvoasnKNmh3SwoYQUH8WG1zHUe1mlfCuCsUxbtJEsniMFAIQeHvUCfTCbHx8ccLtEPPhGaI5vxGvH6v7QwUHFT3FFuaYlVQIYqCevsHbIHMr0Xz18eHh5zigUVGBJOpOYdgRH+wYe/Td7FERNGIC70L0lIB4PVenV0dPhI9Pjli1fT6Ry7cEdP/K6tvqVvs3DTQjYGLL2INZsnrPPJCJG9T+qlkwLeCDaBLOVIi8zJPGB9Va1zAvAy/P3f+xGmFMcJECmW9HOcq4+Oj7/66uH9+/f395+enpxhQoBTliNGfgdEk/aWNJWMRM38YwVSYIWa7fDQBMJnFG8xI0ZzlAl73e64x5E8pgv8m3NUXCwCc+R5STaTFzhXjudJJOOdnJ8+f/788eP9ly9OLy7wuy0QWcEQvE5IEd1w5ToRO5zc4aSKsBEJhVT2a7PBv8W6ODw8Pz4+nU5nvNKOAtAVgyEzJ18kzwPfgqyGhA+/oqSoKcyFclYj29OuA/TQpIeulErVVCy2yKHiirZp9rUiItHSV7Jx4FeE+zWZTVUsq3KF3ZIg9rI+Wo4k6lJnKPCRUixIc2Ggri/yQMmPPIOcnihf6cjdNuTunQRflQAPbFgflUB7UxZoq0uZlLBYi5JClyDipDd9KB7OAAQsvG2Ed5RIJy70DR8stqGD6BgEX7ESXOGaL/AI/QUVQhRvgJbnLm+jn65CurpKxOmEnq6DWI923fwB1J60bYvOkkrWrQiTOM/pTRddJlIHLggbCirDEPooXDQFLqTb69jNZUKGAQBj4BJIsG4T0yAq7hsuhjrAgDgYDAQ07aAc4IN07sIOWVWXSngNd0cHYq2qhR16QVHFj309Bc5jFE4WjxEnsNCASixouc/pNE4kb5aGg1sYYgrg3NoQHFaIXC2ooM5ZpnMaEgcUx2CWx+jkyO3qkT3EuK805JWCOF2hr7pfVnT/EOBRPbYUEqPSKKEk7M9j13ZoRtfbWNeNWJd0zeXRjoXsQF0cSp4OIjtYYzqtbk4hGOCOMvTmVbolcs8rYlXzqUmMz9BVmUhn2ktiLC02gwnCknYwkCsDDkawZzCIR6ZsbkVgiIuQqeNGT50eOI1krzzpjaLSS8JCSGKjChXV7dWuFa8qiI1PHOmTJI1VOnra19YPa13O4BSwUKVAHbt/I5MACUvLVCy5cUtfQrzUSGc0EP1AzD7Yojm9TQ7B7jHsgByLothgxedIrcJBnayAEgaoBy1JFKdR5G5H0QZk4mK9fB6SJDDiAXW/1R+wGQyYpbf4HKTwd354M5EEMgDkRQ4ghMizsLOEshscn8uNPaXLa47IMDcQIDkShU0l+BtjxgwkQZ325KrgWJDi7NgcaaLu+MuKXKEAhs4lNdYyHg/evvWDW2/dGvWHhK/57IL81Q1nXQaFP3pvTxYWd+AjEwHOvAOBH3+hPzTY9bzuvXWcgMkwvoWxLG/HeUjJLXtWi+6btPtNIQ6zHzsTKIEiLvOEF/wDIq5gOBjevnX79u1bw+EIowJckS/5bPMpTOg66rd+42aENsUpbUr6MHtmkqIg0wi3MxyO+70BOOGgTtXIn8AGg0Fgu3IQKbZJ2qU1hZ09pN9lk7M5OxgJnEwWOSKLZjDov3377Xffffetm3vIMV/l8/mUVYDouLiB+P67u3Y/mZp0ZEMW3CrEgL2nKa5xNJCiJMhmvlpNl2sxjt3oxo9ZpA0CpRoDSWClswZI+qE4amA1SIITP+F2N+vs7t545wfv3Lx5s5MmFvRmy8Uc10eW4zy7INbVxlzgq7FWZAgUbDDt+XxOHY8wGsPOIXk4nkS3iFi/nbrRLlRLRZuy0x0VymWLcFlMl0Lokr1EWjgyvGO3m/X6nSj2tPnFFHdnUpHhOjwQdUWX11od0YJ3BOJsdoEjoA+qSTzoZDgUtugCLiYvg+HVQEiqPHXogJs84ZnOzni41oR0GaMVPH1m45VtLJYzuFEUuDn5QsgBcNjCd2720UVSWmySKdXe6D6KydBd7EcSJbchOVnOZsvlCmOUkZOft872WQdPjKSp6ZV32ZxyWewHkcngfUU/CbGtkGEcB4N+1u9nBFemXy0X6yX5dqmp2D5zMMpdP1cc9RU4Nnghx0600Fx/U+RrkvWLyRlCJ8x2U92iEnLdXukjL2lE3UG7TtbIjyVE4HSvlmAQWpEKIHLyewt3qC685yO9wQAY1JZnUNZ+WdnZgmzNUiOpPXndMhcU2FUX5JHYJ+e0QXc86A3iMFGirftsmKUsDJ/nXLcfkDAjP9KEFKWIcOB+RH88uNJe3ZBhYfq7KWlrgujsnAUs4o2eVVvkrGiHMpD6IXV8vd0LieTQv01260J8VFDnVWmUCGWCSHi0mPjyvcXIVB2fSTUOyQ4z0jyLyylS4ROATIrqoK6mi4wCWeBcraZwmT045Nr0xxL1VVVuloI2sNNtKiCY/x9iSQhRMxzPsM2hJA+zDBjmkFmKrXteM8HmKkaLLKORTphSupl5JV4TOhkPPqWPHaWP21Vpt55vIvpANqfO5oCDCF18Yn7n1+2rLrapCICuInjq7GKHIAqLuTsKK/LEtjyDXVwHlkvF3e7dRBB9HI7vI9dBEHWMlr0qA+F4BQst0oIQd6o1jDWENvAJtTFrw0XIfbZuV58hmCWli3TzAlHfGuYW3LblzeS6sQpuxHwShxiBpdDO8mBFtahtgqkx0rLeS3XcQrSKEjOAMm+nm2W9LvkQiGikg80OF1hA9AaI7lPLw5Ig6syJ2uDFEA6iDckPsk6adUnHL01Hu0CmVmkwF1MUGbVyYNUVLtQPDw0Ycnwki4SdcB1uOrE2S9JIxeF4M227MSeTcAYlc2WaONLkqBCKTgihhT5CZASw8Pa4jwNgMSUg5ujAB58IB+T3/cFwNBwPhzuk0NPZ7PTs/OD46PR8QpQBHEmoW5vZNeSKxFdHLGNsFkqLNWw5JGnEK/MfmR7CUcKLDum2JOroL/tsg3GcGfR/mIRjznd2qtDhFolrWjm9TsapEXw7pDqchueL1dHh0cHR0fl8vlqv2SR+h55Si0u5X6MriAYNMsUArM58cKhdzGb4iYqwgaPn3NDJEBVImoIAw3dLAtqWHmGXBJrVEp114Yj+PEkSQo4LbLxrp0vv+WJxdHJyeHB0fHa+LgtGwkKI/trsJUlHNnRVl7TkGfCI0gy02Sk8Xhwursm/S0IzKYVuoNgDHsQ0XPaOPuGR/d0w3BkNRqNBqKMnmstOYuIUmTYKTua2XOfTi/npZDKfzBdFrlRkky5IffWmpcVOw+noyqs7oAATRGMqqHliOW53nDGHvf5oNNL/4ZBGQ13MSQjY88V0dnR64nc9r59GHOmlrGmM8cIeS0vJlgs0erHiqFXmSqNlTl4o/huftIBb2EBcp28EHtfB+mxYzpZMjJu8AwXlhIqy4W+H3WyQdQg/BP/ZFOkdG8Qk6fV6nNQ4eZILYrBo22Q6XZc4CLuZ2xBi8uX/rwn3e+h1iDyvQ4QLlhLQ6ho2xDA8ZC+LhuT5nRivNJle/A9p+tV6eJzazgAAAABJRU5ErkJggg==";
let scoreBars = {};

window.addEventListener('message', (event) => {
    let data = event.data
    if (data.action == 'javascript') {
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

//Billiard

function AddBilliardBall(playerId, ballNumber) {
    var imgElement = document.createElement("img");
    imgElement.src = "images/" + ballNumber + ".png";
    imgElement.classList.add("ball", "img-invisible");
    var parentElement = document.getElementById("p" + playerId + "inside");

    if (parentElement.children.length === 0) {
        imgElement.style.marginLeft = "0.5vh";
    }

    imgElement.onload = function () {
        setTimeout(function () {
            imgElement.classList.remove("img-invisible");
        }, 100);
    };

    parentElement.appendChild(imgElement);
}

function ClearBalls(playerId) {
    var parentElement = document.getElementById("p" + playerId + "inside");
    while (parentElement.firstChild) {
        parentElement.removeChild(parentElement.firstChild);
    }
}

function ResetExtraContent() {
    ClearBalls(1);
    ClearBalls(2);
}

function RefreshPlayerLayout() {
    for (let i = 1; i <= 2; i++) {
        document.getElementById("p" + i + "name").innerHTML = players[i].name;
        document.getElementById("picon" + i).className = "paddle p" + players[i].icon + "icon"
        document.getElementById("row" + i).className = playerId == players[i].id ? "rowmine" : "row";
        document.getElementById("p" + i + "score").innerHTML = players[i].goals;
        document.getElementById("p" + i + "mug").src = players[i].avatar;

        setTimeout(() => {
            var img = document.getElementById("p" + i + "mug")
            var isLoaded = img.complete && img.naturalHeight !== 0;
            if (!isLoaded) {
                players[i].avatar = defaultAvatar;
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
    if (!players[1]) return;
    for (let i = 1; i <= 2; i++) {
        if (players[i].id == pid) {
            players[i].goals = goals;
            ShowUp(document.getElementById("p" + i + "score"));
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
    };
    players[2] = {
        name: p2name,
        avatar: p2avatar,
        icon: p2icon,
        id: p2id,
        goals: 0,
    };
    playerId = localId
    maxScore = score;
    RefreshPlayerLayout();
}

function ToggleTennisUI(visible) {
    document.getElementById("hockeyui").style.display = visible ? "contents" : "none";
    ToggleGameInfo(visible);
}

function ToggleGameInfo(visible) {
    document.getElementById("gameinfo").style.display = visible ? "block" : "none";
}

function SetPing(ping) {
    document.getElementById("pingRow").innerHTML = ping > 0 ? (ping + " ms") : ""
}

function SetCustomInfo(customText) {
    document.getElementById("pingRow").innerHTML = customText
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
    ToggleTennisUI();
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

function UpdateScorebarMugs(id, mug1, mug2) {
    var img1 = document.getElementById("bar" + id + "mug1");
    if (img1) img1.src = mug1;
    var img2 = document.getElementById("bar" + id + "mug2");
    if (img2) img2.src = mug2;
}

function CreateScorebar(id, mug1, mug2) {
    if (scoreBars[id]) {
        return; // Exit the function if the score bar already exists
    }

    if (mug1 == "") mug1 = defaultAvatar;
    if (mug2 == "") mug2 = defaultAvatar;
    // Create the main container div
    const scorebarDiv = document.createElement("div");
    scorebarDiv.id = "bar_" + id;
    scorebarDiv.classList.add("miniScore");
    scorebarDiv.style.left = "50.5vw";
    scorebarDiv.style.top = "50vh";
    scorebarDiv.style.position = "absolute";

    scorebarDiv.style.transform = "scale(0.7)";
    scorebarDiv.style.transformOrigin = "top left";

    // Create the first scoreMug
    const scoreMug1Div = document.createElement("div");
    scoreMug1Div.classList.add("scoreMug");
    const scoreMug1Img = document.createElement("img");
    scoreMug1Img.src = mug1;
    scoreMug1Img.id = "bar" + id + "mug1";
    scoreMug1Div.appendChild(scoreMug1Img);
    scorebarDiv.appendChild(scoreMug1Div);

    // Create the first scoreValue
    const scoreValue1Div = document.createElement("div");
    scoreValue1Div.classList.add("scoreValue", "centered-text");
    scoreValue1Div.textContent = "0";
    scorebarDiv.appendChild(scoreValue1Div);

    // Create the miniScoreDiv
    const miniScoreDiv = document.createElement("div");
    miniScoreDiv.classList.add("miniScoreDiv");
    miniScoreDiv.style.width = "0.2vh";
    miniScoreDiv.style.backgroundColor = "rgba(255, 255, 255, 0.12)";
    scorebarDiv.appendChild(miniScoreDiv);

    // Create the second scoreValue
    const scoreValue2Div = document.createElement("div");
    scoreValue2Div.classList.add("scoreValue", "centered-text");
    scoreValue2Div.textContent = "0";
    scorebarDiv.appendChild(scoreValue2Div);

    // Create the second scoreMug
    const scoreMug2Div = document.createElement("div");
    scoreMug2Div.classList.add("scoreMug");
    const scoreMug2Img = document.createElement("img");
    scoreMug2Img.id = "bar" + id + "mug2";
    scoreMug2Img.src = mug2;
    scoreMug2Div.appendChild(scoreMug2Img);
    scorebarDiv.appendChild(scoreMug2Div);

    // Append the created scorebarDiv to the miniScores container
    const miniScoresContainer = document.getElementById("miniScores");
    miniScoresContainer.appendChild(scorebarDiv);

    // Store the created score bar in the scoreBars object
    scoreBars[id] = scorebarDiv;

    scorebarDiv.style.display = "none";
}

function DeleteScorebar(id) {
    if (scoreBars[id]) {
        const scorebarDiv = scoreBars[id];
        scorebarDiv.remove(); // Remove the score bar element from the DOM
        delete scoreBars[id]; // Remove the reference from the scoreBars object
    }
}

function SetScorebarPosition(id, x, y, scale) {
    if (scoreBars[id]) {
        const scorebarDiv = scoreBars[id];
        scorebarDiv.style.left = x + "vw";
        scorebarDiv.style.top = y + "vh";

        scorebarDiv.style.transform = "scale(" + scale + ")";
        scorebarDiv.style.transformOrigin = "top left";
    }
}

function ToggleScorebarVisibility(id, toggle) {
    if (scoreBars[id]) {
        const scorebarDiv = scoreBars[id];
        scorebarDiv.style.display = toggle ? "flex" : "none";
    }
}

function SetScorebarScore(id, score1, score2) {
    if (scoreBars[id]) {
        const scorebarDiv = scoreBars[id];
        const children = scorebarDiv.children;

        if (children.length >= 5) {
            // Update the first scoreValue
            children[1].textContent = score1;

            // Update the second scoreValue
            children[3].textContent = score2;
        }
    }
}

ToggleTennisUI(false);
ToggleGameInfo(false);
ToggleMatchPoint(false);
ToggleBettingBar(false, "");