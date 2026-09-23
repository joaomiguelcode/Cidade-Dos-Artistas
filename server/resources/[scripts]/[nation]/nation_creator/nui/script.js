var gender = "male";
var activeCam = 1;
var activePage = 0;
var pageTracking = [];
var inCreator = false;
var changingSlide = false;
var changingCam = false;
var componentCams = {};
var nextCam = 0;
var oldLeft = nextCam;
var charInfos = {};
var player = {};

var spawns = [
    { name: "Garagem Praça" },
    { name: "Garagem Sandy Shores" },
    { name: "Garagem Paleto" },
    { name: "Metrô" },
    { name: "Aeroporto" },
    { name: "Última Localização" },
]

const cams = [
    "body", "head", "eye", "mouth", "chest"
];

const getCamIndex = (cam) => {
    for (let i in cams) 
        if (cams[i] == cam) return i;
    return 0;
}

const keys = {
    [8]: "back",
    [13]: "enter",
    [27]: "esc",
    [32]: "space",
    [37]: "left",
    [38]: "up",
    [39]: "right",
    [40]: "down",
    [49]: "slot1",
    [50]: "slot2",
    [51]: "slot3",
    [52]: "slot4",
    [53]: "slot5",
    [65]: "a",
    [68]: "d",
    [88]: "x"
}

const actionKeys = {
    back: () => {
        if(!inCreator) return;
        if ($(".popup").hasClass("popup-active"))
            deny();
        else
            slide(false, false, true);
    },
    left: () => {
        if ($("input").is(':focus') || !inCreator) return;
        slide(false, false, false);
    },

    right: () => {
        if ($("input").is(':focus') || !inCreator) return;
        slide(true, false, false);
    },


    a: () => {
        $.post("https://nation_creator/rotate", JSON.stringify({ increase: true }));
    },

    d: () => {
        $.post("https://nation_creator/rotate", JSON.stringify({ increase: false }));
    },

    slot1: () => {
        if(!inCreator) return;
        changeCam(false, 0);
    },

    slot2: () => {
        if(!inCreator) return;
        changeCam(false, 1);
    },

    slot3: () => {
        if(!inCreator) return;
        changeCam(false, 2);
    },

    slot4: () => {
        if(!inCreator) return;
        changeCam(false, 3);
    },

    slot5: () => {
        if(!inCreator) return;
        changeCam(false, 4);
    },
}


const pages = [ "one", "two", "three", "four", "five", "six", "seven", "eight"];
const pagesHash = {
    one : "01",
    two : "02",
    three : "03",
    four: "04",
    five: "05",
    six: "06",
    seven: "07",
    eight: "08",
};


const pagesCam = [ "body", "chest", "eye", "head", "mouth", "mouth", "head", "head" ]



const buildCamIcons = () => {
    activeCam = 1;
    let el = $(".cam-icon").html("");
    for (let i in cams) {
        let cam = cams[i];
        let icon = icons[cam];
        el.append(icon);
    }
    nextCam = toVh(Number(el.css("left").replace("px", "")));
    oldLeft = nextCam;
}


const buildContainer = () =>{
    let camInner = `<div class="cam-container">
        <div class="cam-icon"></div>
    </div>
    <div class="arrows">
        <div class="arrow arrow-left" onclick="changeCam(false)">
            <i class="fas fa-chevron-left"></i>
        </div>
        <div class="arrow arrow-right" onclick="changeCam(true)">
            <i class="fas fa-chevron-right"></i>
        </div>
    </div>`;
    let rotateInner = `<p>a</p>${icons.rotate}<p>d</p>`;
    let popupInner = `<div class="popup">
        <div class="popup-header">
            <i class="fas fa-exclamation-circle"></i>
            <p>${lang.confirm}</p>
        </div>
        <div class="popup-text"></div>
        <div class="popup-buttons">
            <button id="yes" class="btn finish" onclick="finish()"><span>${lang.yes}</span></button>
            <button class="btn deny" onclick="deny()"><span>${lang.no}</span></button>
        </div>
        <div class="popup-loading">
            <div class="lds-ring"><div></div><div></div><div></div><div></div></div>
            <i class="far fa-check-circle success"></i>
            <i class="fas fa-ban fail"></i>
            <p></p>
        </div>
    </div>`;
    let sectionsInner = "";
    let sections = ["identity", "skin", "eyes", "nose", "jaw", "cheek", "freckles", "style"];
    for (let i in sections) 
        sectionsInner += `<div class="section" onclick="slide(false, ${i}, false);">${icons[sections[i]]}</div>`;
    let containerInner = `
    <div class="top"><div class="title">${lang.title}</div></div>
    <div class="pages-container">
        <div class="middle page-one">
            <div class="component-title">${lang.identity}</div>
            <div class="identity">
                <div class="identity-input">
                    <p>${lang.name}:</p> <input id="name" type="text">
                </div>
                <div class="identity-input">
                    <p>${lang.lastName}:</p> <input id="lastName" type="text">
                </div>
                <div class="identity-input">
                    <p>${lang.age}:</p> <input id="age" type="number">
                </div>
            </div>
            <div class="component-title">${lang.gender}</div>
            <div class="genders-box">
                <div class="gender-box male" onclick="changeGender('male')">
                    <i class="fas fa-mars"></i>
                </div>
                <div class="gender-box female" onclick="changeGender('female')">
                    <i class="fas fa-venus"></i>
                </div>
            </div>
            <div class="component-title">${lang.heritage}</div>
            <div class="heritage-img"><img class="shapeFirst" src="" alt=""><img class="shapeSecond" src="" alt=""></div>

            <div class="heritage-buttons">
                <button class="select-parent" onclick="buildParentSelection('${lang.selectMom}','shapeFirst');"><p>${lang.selectMom}</p></button>
                <button class="select-parent" onclick="buildParentSelection('${lang.selectDad}','shapeSecond');"><p>${lang.selectDad}</p></button>
            </div>
            <div class="component-title">${lang.resemblance}</div>
            <div class="slider-container">
                <p class="perc shapeMix-mom">50%</p>
                <i class="fas fa-female"></i>
                <input id="shapeMix" class="slider" type="range" min="0" max="100" step="1" oninput="changeSliderValue('shapeMix', this);">
                <i class="fas fa-male"></i>
                <p class="perc shapeMix-dad">50%</p>
            </div>
        </div>
        <div class="middle page-two">
            <div class="component-title">${lang.momColor}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="skinFirst" class="slider" type="range" value="0" min="0" max="45" step="1" oninput="changeSliderValue('skinFirst', this);">
                <p class="perc skinFirst-dad">0</p>
            </div>
            <div class="component-title">${lang.dadColor}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="skinSecond" class="slider" type="range" value="0" min="0" max="45" step="1" oninput="changeSliderValue('skinSecond', this);">
                <p class="perc skinSecond-dad">0</p>
            </div>
            <div class="component-title">${lang.skinTone}</div>
            <div class="slider-container">
                <p class="perc skinMix-mom">50%</p>
                <i class="fas fa-female"></i>
                <input id="skinMix" class="slider" type="range" min="0" max="100" step="1" oninput="changeSliderValue('skinMix', this);">
                <i class="fas fa-male"></i>
                <p class="perc skinMix-dad">50%</p>
            </div>
            <div class="component-title">${lang.bodyBlemishes}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="bodyBlemishes" class="slider" type="range" value="-1" min="-1" max="11" step="1" oninput="changeSliderValue('bodyBlemishes', this);">
                <p class="perc bodyBlemishes-dad">-1</p>
            </div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="addBodyBlemishes" class="slider" type="range" value="-1" min="-1" max="1" step="1" oninput="changeSliderValue('addBodyBlemishes', this);">
                <p class="perc addBodyBlemishes-dad">-1</p>
            </div>
        </div>
        <div class="middle page-three">
            <div class="component-title">${lang.eyesColor}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="eyes" onclick="buildShapeSelection('${lang.eyesColor}', this, 'eyes');">${icons.eyes}</button>
                <p id="eyes-value">0</p>
            </div>
            <div class="component-title">${lang.eyesOpenning}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="eyesOpenning" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('eyesOpenning', this);">
                <p class="perc eyesOpenning-dad">0</p>
            </div>
            <div class="component-title">${lang.eyebrows}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="eyebrows" onclick="buildShapeSelection('${lang.eyebrows}', this, 'eyebrows');">${icons.eyebrows}</button>
                <p id="eyebrows-value">-1</p>
                <button class="select-color" id="eyebrows-color" onclick="buildColorSelection('${lang.eyebrowsColor}', this, 'eyebrows-color', false);">${icons.color}</button>
            </div>
            <div class="component-title">${lang.eyeBrownHigh}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="eyeBrownHigh" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('eyeBrownHigh', this);">
                <p class="perc eyeBrownHigh-dad">0</p>
            </div>
            <div class="component-title">${lang.eyeBrownForward}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="eyeBrownForward" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('eyeBrownForward', this);">
                <p class="perc eyeBrownForward-dad">0</p>
            </div>
        </div>
        <div class="middle page-four">
            <div class="component-title">${lang.noseWidth}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="noseWidth" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('noseWidth', this);">
                <p class="perc noseWidth-dad">0</p>
            </div>
            <div class="component-title">${lang.nosePeakHeight}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="nosePeakHeight" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('nosePeakHeight', this);">
                <p class="perc nosePeakHeight-dad">0</p>
            </div>
            <div class="component-title">${lang.nosePeakLength}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="nosePeakLength" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('nosePeakLength', this);">
                <p class="perc nosePeakLength-dad">0</p>
            </div>
            <div class="component-title">${lang.nosePeakLowering}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="nosePeakLowering" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('nosePeakLowering', this);">
                <p class="perc nosePeakLowering-dad">0</p>
            </div>
            <div class="component-title">${lang.noseBoneHigh}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="noseBoneHigh" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('noseBoneHigh', this);">
                <p class="perc noseBoneHigh-dad">0</p>
            </div>
            <div class="component-title">${lang.noseBoneTwist}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="noseBoneTwist" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('noseBoneTwist', this);">
                <p class="perc noseBoneTwist-dad">0</p>
            </div>
        </div>
        <div class="middle page-five">
            <div class="component-title">${lang.chinBoneLowering}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="chinBoneLowering" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('chinBoneLowering', this);">
                <p class="perc chinBoneLowering-dad">0</p>
            </div>
            <div class="component-title">${lang.chinBoneLength}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="chinBoneLength" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('chinBoneLength', this);">
                <p class="perc chinBoneLength-dad">0</p>
            </div>
            <div class="component-title">${lang.chinBoneWidth}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="chinBoneWidth" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('chinBoneWidth', this);">
                <p class="perc chinBoneWidth-dad">0</p>
            </div>
            <div class="component-title">${lang.chinHole}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="chinHole" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('chinHole', this);">
                <p class="perc chinHole-dad">0</p>
            </div>
            <div class="component-title">${lang.jawBoneWidth}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="jawBoneWidth" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('jawBoneWidth', this);">
                <p class="perc jawBoneWidth-dad">0</p>
            </div>
            <div class="component-title">${lang.jawBoneBackLength}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="jawBoneBackLength" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('jawBoneBackLength', this);">
                <p class="perc jawBoneBackLength-dad">0</p>
            </div>
        </div>
        <div class="middle page-six">
            <div class="component-title">${lang.cheeksBoneHigh}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="cheeksBoneHigh" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('cheeksBoneHigh', this);">
                <p class="perc cheeksBoneHigh-dad">0</p>
            </div>
            <div class="component-title">${lang.cheeksBoneWidth}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="cheeksBoneWidth" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('cheeksBoneWidth', this);">
                <p class="perc cheeksBoneWidth-dad">0</p>
            </div>
            <div class="component-title">${lang.cheeksWidth}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="cheeksWidth" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('cheeksWidth', this);">
                <p class="perc cheeksWidth-dad">0</p>
            </div>
            <div class="component-title">${lang.neckThickness}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="neckThickness" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('neckThickness', this);">
                <p class="perc neckThickness-dad">0</p>
            </div>
            <div class="component-title">${lang.lipsThickness}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="lipsThickness" class="slider" type="range" value="0" min="-1" max="1" step="0.01" oninput="changeSliderValue('lipsThickness', this);">
                <p class="perc lipsThickness-dad">0</p>
            </div>
        </div>
        <div class="middle page-seven">
            <div class="component-title">${lang.complexion}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="complexion" class="slider" type="range" value="-1" min="-1" max="11" step="1" oninput="changeSliderValue('complexion', this);">
                <p class="perc complexion-dad">-1</p>
            </div>
            <div class="component-title">${lang.sunDamage}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="sunDamage" class="slider" type="range" value="-1" min="-1" max="10" step="1" oninput="changeSliderValue('sunDamage', this);">
                <p class="perc sunDamage-dad">-1</p>
            </div>
            <div class="component-title">${lang.freckles}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="freckles" class="slider" type="range" value="-1" min="-1" max="17" step="1" oninput="changeSliderValue('freckles', this);">
                <p class="perc freckles-dad">-1</p>
            </div>
            <div class="component-title">${lang.ageing}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="ageing" class="slider" type="range" value="-1" min="-1" max="14" step="1" oninput="changeSliderValue('ageing', this);">
                <p class="perc ageing-dad">-1</p>
            </div>
            <div class="component-title">${lang.blemishes}</div>
            <div class="slider-container">
                <p class="perc"></p>
                <input id="blemishes" class="slider" type="range" value="-1" min="-1" max="23" step="1" oninput="changeSliderValue('blemishes', this);">
                <p class="perc blemishes-dad">-1</p>
            </div>
        </div>
        <div class="middle page-eight">
            <div class="component-title">${lang.hair}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="hair" onclick="buildShapeSelection('${lang.hair}', this, 'hair');">${icons.hair}</button>
                <p id="hair-value">0</p>
                <button class="select-color" id="hair-color" onclick="buildColorSelection('${lang.hairColor}', this, 'hair-color', false);">${icons.color}</button>
                <button class="select-color" id="hair-highlightcolor" onclick="buildColorSelection('${lang.hairHighlightColor}', this, 'hair-highlightcolor', false);">${icons.highlightColor}</button>
            </div>
            <div class="component-title">${lang.beard}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="facialHair" onclick="buildShapeSelection('${lang.beard}', this, 'facialHair');">${icons.beard}</button>
                <p id="facialHair-value">-1</p>
                <button class="select-color" id="facialHair-color" onclick="buildColorSelection('${lang.beardColor}', this, 'facialHair-color', false);">${icons.color}</button>
            </div>
            <div class="component-title">${lang.chestHair}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="chestHair" onclick="buildShapeSelection('${lang.chestHair}', this, 'chestHair');">${icons.chestHair}</button>
                <p id="chestHair-value">-1</p>
                <button class="select-color" id="chestHair-color" onclick="buildColorSelection('${lang.chestHairColor}', this, 'chestHair-color', false);">${icons.color}</button>
            </div>
            <div class="component-title">${lang.blush}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="blush" onclick="buildShapeSelection('${lang.blush}', this, 'blush');">${icons.blush}</button>
                <p id="blush-value">-1</p>
                <button class="select-color" id="blush-color" onclick="buildColorSelection('${lang.blushColor}', this, 'blush-color', true);">${icons.color}</button>
            </div>
            <div class="component-title">${lang.lipstick}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="lipstick" onclick="buildShapeSelection('${lang.lipstick}', this, 'lipstick');">${icons.lipstick}</button>
                <p id="lipstick-value">-1</p>
                <button class="select-color" id="lipstick-color" onclick="buildColorSelection('${lang.lipstickColor}', this, 'lipstick-color', true);">${icons.color}</button>
            </div>
            <div class="component-title">${lang.makeup}</div>
            <div class="shape-color-buttons">
                <button class="select-color select-shape" id="makeup" onclick="buildShapeSelection('${lang.makeup}', this, 'makeup');">${icons.makeup}</button>
                <p id="makeup-value">-1</p>
                <button class="select-color" id="makeup-color" onclick="buildColorSelection('${lang.makeupColor}', this, 'makeup-color', true);">${icons.color}</button>
            </div>
        </div>
    </div>
    <div class="bottom">
        <button class="btn cancel" onclick="slide(false, false, true)"><span>${lang.back}</span></button>
        <div class="btn pages">
            <div class="arrows">
                <div class="arrow arrow-left">
                    <i class="fas fa-chevron-left" onclick="slide(false)"></i>
                </div>
                <div class="arrow arrow-right" onclick="slide(true)">
                    <i class="fas fa-chevron-right"></i>
                </div>
            </div>
            <div class="page"></div>
        </div>
        <button class="btn next" onclick="slide(true)">
            <p id="next">${lang.next}</p>
        </button>
    </div>`;


    let multiCharContainerInner = `<div class="top"><div class="title">${lang.multiCharTitle}</div></div>
    <div class="middle multichar-scroll"></div>`;
    let multiCharContainer2Inner = `<div class="top"><div class="title">${lang.charInfo}</div></div>
    <div class="component-title">
        ${lang.name}: <p id="char-name"></p>
    </div>
    <div class="component-title">
        ${lang.age}: <p id="char-age"></p>
    </div>
    <div class="component-title">
        ${lang.gender}: <p id="char-gender"></p>
    </div>
    <div class="component-title">
        ${lang.bank}: <p id="char-bank"></p>
    </div>
    <div class="component-title">
        ${lang.registration}: <p id="char-registration"></p>
    </div>
    <div class="component-title">
        ${lang.phone}: <p id="char-phone"></p>
    </div>
    <div class="component-title delete-char">
        ${lang.deleteChar}
    </div>
    `;
    let loginInner = `<div class="login-container">
        <div class="top"><div class="title">${lang.selectSpawn}</div></div>
        <div class="middle spawn-scroll"></div>
    </div>
    <button id="spawn-char" class="btn finish spawn-char spawn-char-inactive"><p>${lang.spawn}</p></button>`;
    

    $(".cam").html(camInner);
    $(".rotate").html(rotateInner);
    $(".section-selector").html(sectionsInner);
    $(".container").html(containerInner);
    $(".popup-container").html(popupInner);

    $(".multichar-container").html(multiCharContainerInner);
    $(".multichar-container2").html(multiCharContainer2Inner);

    $(".login").html(loginInner);
    buildCamIcons();
}



const startNui = () => {
    if (nuiStarted) return;
    nuiStarted = true;
    buildContainer();
    const actions = {
        show: (data) => {
            buildContainer();
            componentCams = data.componentCams;
            player = data.player;
            pageTracking = [];
            colors = data.colors;
            makeUpColors = data.makeUpColors;
            $(".creator").fadeIn(500);
            $(".container").slideDown(500);
            inCreator = true;
            slide(false, 0);
            changeCam(false, 0);
            setData();
        },

        hide: (data) => {
            if (!inCreator) return; 
            $(".creator").fadeOut(500);
            pageTracking = [];
            inCreator = false;
        },

        updatePlayer: (data) => {
            player = data.player;
            setData(true);
        },

        showMultiChar: (data) => {
            charInfos = data.charInfos;
            buildChars();
            $(".multichar").fadeIn(500);
            if (charInfos && charInfos.chars && charInfos.chars[0]) {
                setTimeout(() => {
                    selectChar(0, $(".char-selector").first());
                }, 300);
            }
        },

        hideMultiChar: (data) => {
            $(".multichar").fadeOut(500);
        },

        showLogin: (data) =>{
            spawns = data.spawns;
            buildSpawns();
            $(".login").fadeIn(500);
        },

        hideLogin: (data) =>{
            $(".login").fadeOut(500);
        },

       
    }

    window.addEventListener("message", (event) => {
        let action = event.data.action;
        if (actions[action]) actions[action](event.data);
    });

    document.onkeydown = (data) => {
        if (changingSlide || $("input[type=text]").is(':focus') || $("input[type=number]").is(':focus')) return;
        let key = keys[data.which];
        if (actionKeys[key]) actionKeys[key]();
    };
}




let nuiStarted = false;
let nuiAuthLoaded = false;

$(() => {
    const triggerAuth = () => {
        if (nuiAuthLoaded) return;
        nuiAuthLoaded = true;
        if (!nuiStarted) {
            startNui();
        }
        try {
            $.post("https://nation_creator/loaded");
        } catch (e) {}
    };

    if (!nuiStarted) {
        startNui();
        nuiAuthLoaded = true;
    }

    window.addEventListener("message", function (event) {
        let message = event.data && event.data.message;
        if (message === "authenticated " && !nuiAuthLoaded) {
            triggerAuth();
        }
    });

    setTimeout(() => {
        if (!nuiAuthLoaded) {
            triggerAuth();
        }
    }, 5000);
})



const slide = (increase, forcePage, back) => {
    if ((increase && activePage+1 == pages.length) || changingSlide) 
        return;
    if (forcePage !== false && forcePage !== undefined) {
        pageTracking.push(activePage);
        activePage = forcePage;
    }
    else if (back && pageTracking.length > 0) {
        activePage = pageTracking.pop();
    }
    else {
        pageTracking.push(activePage);
        if (increase && activePage+1 < pages.length)
            activePage++;
        else if (!increase && activePage-1 >= 0) 
            activePage--;
        else {
            pageTracking.pop();
            return;
        }
    }
    changingSlide = true;
    let page = pages[activePage];
    let el = $(".page-"+page);
    for (let i in pages) {
        $(".page-"+pages[i]).removeClass("page-"+pages[i]+"-active page-"+pages[i]+"-passed");
        if (page != pages[i]) {
            if (i < activePage)
                $(".page-"+pages[i]).addClass("page-"+pages[i]+"-passed");
        }
    }    
    el.addClass("page-"+page+"-active");
    $(".page").text(pagesHash[page]);
    let sections = $(".section");
    sections.removeClass("section-actived");
    $(sections[activePage]).addClass("section-actived");

    let cam = getCamIndex(pagesCam[activePage]);
    changeCam(false, cam);

    if (activePage == pages.length-1) {
        $("#next").text(lang.finish);
        $(".next").attr("onclick", "requestPopup()");
    } else { 
        $("#next").text(lang.next);
        $(".next").attr("onclick", "slide(true)");
    }

    confirmSelection();

    setTimeout(()=>{
        changingSlide = false;
    }, 650)
}




const changeCam = (increase, force) => {
    if (changingCam || (force != undefined && force == activeCam)) return;
    changingCam = true;
    let prevCam = activeCam;
    if (force != undefined) 
        activeCam = force;
    else if (increase)  
        if (activeCam+1 < cams.length)
            activeCam++;
        else
            activeCam = 0;
    else 
        if (activeCam-1 >= 0) 
            activeCam--;
        else 
            activeCam = cams.length-1;
    let el = $(".cam-icon");
    let left = oldLeft;
    let newLeft = left + (activeCam - prevCam) * nextCam;
    if (activeCam == 0)
        newLeft = 0;
    if (activeCam == cams.length-1 && prevCam == 0)
        newLeft = nextCam * (cams.length-1);
    el.css("left", newLeft+"vh");
    oldLeft = newLeft;
    $.post("https://nation_creator/changeCam", JSON.stringify({ cam: cams[activeCam] }));
    setTimeout(()=>{
        changingCam = false;
    },600);
}



function toVh(px) {
	return px * (100 / document.documentElement.clientHeight);
}


const finish = () => {
    $(".popup-loading").addClass("popup-loading-active")
    $(".lds-ring").fadeIn(300);
    $.post("https://nation_creator/finish", JSON.stringify({}), (data)=>{
        let classe = ".fail";
        if (data) classe = ".success";
        $(".lds-ring").fadeOut(300, ()=>{
            $(classe).addClass("icon-active");
            setTimeout(() =>{
                deny();
            },2000)
        });
    });
}

const deny = () => {
    $(".popup").removeClass("popup-active");
    $(".popup-container").fadeOut(500, ()=>{
        $(".popup-loading").removeClass("popup-loading-active");
        $(".lds-ring").hide();
        $(".popup-loading i").removeClass("icon-active");
    });
}


const uppercaseWords = str => str.toLowerCase().replace(/^(.)|\s+(.)/g, c => c.toUpperCase());


const requestPopup = () => {
    $("#yes").attr("onclick", "finish()");
    $.post("https://nation_creator/requestPopup", 
    JSON.stringify({ name: uppercaseWords($("#name").val()), lastName: uppercaseWords($("#lastName").val()), age: parseInt($("#age").val()), }), 
    (data)=> {
        $(".popup-loading p").text("");
        if (data.success) {
            $(".popup-text").html("<p>"+data.message+"</p>");
            $(".popup-container").fadeIn(500, ()=>{
                $(".popup").addClass("popup-active");
            });
        } else {
            $(".popup-text").html("<p>"+data.message+"</p>");
            $(".popup-container").fadeIn(500, ()=>{
                $(".popup").addClass("popup-active");
            });
            $(".popup-loading").addClass("popup-loading-active");
            $(".lds-ring").fadeIn(300);
            setTimeout(()=>{
                $(".lds-ring").fadeOut(300, ()=>{
                    $(".fail").addClass("icon-active");
                    $(".popup-loading p").text(data.message);
                    setTimeout(() =>{
                        deny();
                        slide(false, 0);
                    },3000)
                });
            }, 2000);
        }
    });
}



const selectParent = (key, index, el) => {
    $(".option-select").removeClass("option-selected");
    $(".option-checked").remove();
    if (el) $(el).addClass("option-selected").append("<div class='option-checked'><i class='fas fa-check-circle'></i></div>");
    $("."+key).attr("src", imgDir+"parents/"+index+".png");
    player[key] = index;
    $.post("https://nation_creator/change", JSON.stringify({ key: key, value: player[key] }));

}


const selectOption = (option, index, el) => {
    $(".option-select").removeClass("option-selected");
    $(".option-checked").remove();
    $(el).addClass("option-selected").append("<div class='option-checked'><i class='fas fa-check-circle'></i></div>");
    $("#"+option+"-value").text(index);
    player[option] = index;
    $.post("https://nation_creator/change", JSON.stringify({ key: option, value: player[option] }));
}

const showAllParents = (key) =>{
    let div = "";
    for (let i in parents) {
        let parentName = parents[i];
        let classe = "option-select";
        let icon = "";
        if (i == player[key]) {
            classe = "option-select option-selected";
            icon = "<div class='option-checked'><i class='fas fa-check-circle'></i></div>";
        }
        div += `<div class="`+classe+`" onclick="selectParent('`+key+`', `+i+`, this)">
        <img src="`+imgDir+`parents/`+i+`.png" alt="">
        <div class="option-name">`+parentName+`</div>`+icon+`</div>`;
    } 
    $(".heritage-grid").html(div);
}


const buildParentSelection = (title, key) =>{
    let container = $(".container2");
    let div = `<div class="top">
    <div class="title">
        `+title+`
    </div>
    </div>
    <div class="pages-container">
        <div class="middle heritage-grid">`
    ;
    let start = 0;
    if (key == "shapeFirst") start = 21;
    for (let i = start; i <= parents.length-1; i++) {
        if (start == 0 && i > 20 && (i < 42 || i > 44)) continue;
        else if (start != 0 && (i < 21 || (i > 41 && i < 45))) continue;
        let parentName = parents[i];
        let classe = "option-select";
        let icon = "";
        if (i == player[key]) {
            classe = "option-select option-selected";
            icon = "<div class='option-checked'><i class='fas fa-check-circle'></i></div>";
        }
        div += `<div class="`+classe+`" onclick="selectParent('`+key+`', `+i+`, this)">
        <img src="`+imgDir+`parents/`+i+`.png" alt="">
        <div class="option-name">`+parentName+`</div>`+icon+`</div>`;
    } 
    div += `<div class="option-select" onclick="showAllParents('`+key+`')"><i class="fas fa-plus"></i></div></div></div><div class="confirm-button" onclick="confirmSelection()"><i class="far fa-check-circle"></i></div>`;
    container.slideUp(500,()=>{
        container.html(div).slideDown(500);
    });  
}


var colors = [
    [ 28, 31, 33],
    [ 39, 42, 44],
    [ 49, 46, 44],
    [ 53, 38, 28],
    [ 75, 50, 31],
    [ 92, 59, 36],
    [ 109, 76, 5],
    [ 107, 80, 5],
    [ 118, 92, 6],
    [ 127, 104,78 ],
    [ 153, 129,93 ],
    [ 167, 147,105 ],
    [ 175, 156,112 ],
    [ 187, 160,99 ],
    [ 214, 185,123 ],
    [ 218, 195,142 ],
    [ 159, 127, 89 ],
    [ 132, 80, 5],
    [ 104, 43, 3],
    [ 97, 18, 12],
    [ 100, 15, 1],
    [ 124, 20, 1],
    [ 160, 46, 2],
    [ 182, 75, 4],
    [ 162, 80, 4],
    [ 170, 78, 4],
    [ 98, 98, 98],
    [ 128, 128, 128],
    [ 170, 170, 170],
    [ 197, 197, 197],
    [ 70, 57, 85],
    [ 90, 63, 10],
    [ 118, 60, 1],
    [ 237, 116, 227],
    [ 235, 75, 1],
    [ 242, 153, 188],
    [ 4, 149, 15],
    [ 2, 95, 134],
    [ 2, 57, 116],
    [ 63, 161, 1],
    [ 33, 124, 9],
    [ 24, 92, 85],
    [ 182, 192, 52],
    [ 112, 169, 11],
    [ 67, 157, 1],
    [ 220, 184, 87],
    [ 229, 177, 3],
    [ 230, 145, 2],
    [ 242, 136, 49],
    [ 251, 128, 87],
    [ 226, 139, 88],
    [ 209, 89, 6],
    [ 206, 49, 3],
    [ 173, 9, 3],
    [ 136, 3, 2],
    [ 31, 24, 20],
    [ 41, 31, 25],
    [ 46, 34, 27],
    [ 55, 41, 30],
    [ 46, 34, 24],
    [ 35, 27, 21],
    [ 2, 2, 2],
    [ 112, 108, 102 ],
    [ 157, 122, 80 ],
]


var makeUpColors = [
    [153, 37, 50],
    [200, 57, 93],
    [189, 81, 108],
    [184, 99, 122],
    [166, 82, 107],
    [177, 67, 76],
    [127, 49, 51],
    [164, 100, 93],
    [193, 135, 121],
    [203, 160, 150],
    [198, 145, 143],
    [171, 111, 99],
    [176, 96, 80],
    [168, 76, 51],
    [180, 113, 120],
    [202, 127, 146],
    [237, 156, 190],
    [231, 117, 164],
    [222, 62, 129],
    [179, 76, 110],
    [113, 39, 57],
    [79, 31, 42],
    [170, 34, 47],
    [222, 32, 52],
    [207, 8, 19],
    [229, 84, 112],
    [220, 63, 181],
    [194, 39, 178],
    [160, 28, 169],
    [110, 24, 117],
    [115, 20, 101],
    [86, 22, 92],
    [109, 26, 157],
    [27, 55, 113],
    [29, 78, 167],
    [30, 116, 187],
    [33, 163, 206],
    [37, 194, 210],
    [35, 204, 165],
    [39, 192, 125],
    [27, 156, 50],
    [20, 134, 4],
    [112, 208, 65],
    [197, 234, 52],
    [225, 227, 47],
    [255, 221, 38],
    [250, 192, 38],
    [247, 138, 39],
    [254, 89, 16],
    [190, 110, 25],
    [247, 201, 127],
    [251, 229, 192],
    [245, 245, 245],
    [179, 180, 179],
    [145, 145, 145],
    [86, 78, 78],
    [24, 14, 14],
    [88, 150, 158],
    [77, 111, 140],
    [26, 43, 85],
    [160, 126, 107],
    [130, 99, 85],
    [109, 83, 70],
    [62, 45, 39],
]


const selectColor = (key, index, el, makeup) => {
    $(".color-select").removeClass("color-selected");
    $(".color-checked").remove();
    $(el).addClass("color-selected").append("<div class='color-checked'><i class='fas fa-check-circle'></i></div>");
    let color = colors[index];
    if (makeup) color = makeUpColors[index];
    if (color) {
        let r = color[0], g = color[1], b = color[2];
        $("#"+key).css("background", "rgb("+r+","+g+","+b+")");
    } else
        $("#"+key).css("background", "transparent");
    player[key] = index;
    $.post("https://nation_creator/change", JSON.stringify({ key: key, value: player[key] }));
}

const buildColorSelection = (title, el, key, makeup) =>{
    let container = $(".container2");
    let div = `<div class="top">
    <div class="title">
        `+title+`
    </div>
    </div>
    <div class="pages-container">
        <div class="middle color-grid">`;
    if (key == "makeup-color") {
        let classe = "color-select";
        let icon = "<i class='fas fa-times'></i>";
        if (-1 == player[key]) {
            classe = "color-select color-selected";
            icon += "<div class='color-checked'><i class='fas fa-check-circle'></i></div>";
        }
        div += `<div class="`+classe+`" onclick="selectColor('`+key+`', -1, this, `+makeup+`)" 
        style="background: linear-gradient(180deg, rgba(255,255,255,0.8) 0%, rgba(255,255,255,1) 50%, rgba(255,255,255,0.8) 100%);">
        `+icon+`
        </div>`;
    }

    for (let k in makeUpColors) {
        let color = colors[k];
        if (makeup) color = makeUpColors[k];
        let r = color[0], g = color[1], b = color[2];
        let classe = "color-select";
        let icon = "";
        if (k == player[key]) {
            classe = "color-select color-selected";
            icon = "<div class='color-checked'><i class='fas fa-check-circle'></i></div>";
        }
        div += `<div class="`+classe+`" onclick="selectColor('`+key+`', `+k+`, this, `+makeup+`)" 
        style="background: linear-gradient(180deg, rgba(`+r+`, `+g+`, `+b+`,0.8) 0%, rgba(`+r+`, `+g+`, `+b+`,1) 50%, rgba(`+r+`, `+g+`, `+b+`,0.8) 100%);">
        `+icon+`
        </div>`; 
    } 

    let opacityKey = key.replace("-color", "-opacity");
    div += `</div></div> <div class="confirm-button" onclick="confirmSelection()"><i class="far fa-check-circle"></i></div>
    <div class="opacity-slider ${opacityKey}">
           <input type="range" value="${Math.floor(player[opacityKey]*100)}" min="0" max="100" oninput="changeSliderColor(this, '${opacityKey}')">
           <p>${lang.opacity}</p>
       </div>`;
    container.slideUp(500,()=>{
        container.html(div).slideDown(500);
        changeSliderColor($(".opacity-slider input")[0]);
    });  
}


const buildShapeSelection = (title, el, key) =>{
    let container = $(".container2");
    let div = `<div class="top">
    <div class="title">
        `+title+`
    </div>
    </div>
    <div class="pages-container">
        <div class="middle option-grid">`
    ;
    let min = player[key+"-min"];
    if (min === undefined) min = -1;
    for (let i = min; i < player[key+"-max"]; i++) {
        let classe = "option-select";
        let icon = "";
        if (i == player[key]) {
            classe = "option-select option-selected";
            icon = "<div class='option-checked'><i class='fas fa-check-circle'></i></div>";
        }
        div += `<div class="`+classe+`" onclick="selectOption('`+key+`', `+i+`, this)">
            <img src="`+imgDir+player.gender+`/`+key+`/`+i+`.png" alt="">
            <div class="option-index">`+i+`</div>`+icon+`</div>`;
    } 
    div += `</div></div> <div class="confirm-button" onclick="confirmSelection()"><i class="far fa-check-circle"></i></div>`;


    let cam = getCamIndex(pagesCam[activePage]);
    changeCam(false, cam);
    if (componentCams[key]) changeCam(false, getCamIndex(componentCams[key]));

    container.slideUp(500,()=>{
        container.html(div).slideDown(500);
    });  
}

const changeSliderColor = (el, key) =>{
    $( el ).css( 'background', 'linear-gradient(to right, white 0%, white '+el.value +'%, #242424 ' + el.value + '%, #242424 100%)' );
    player[key] = el.value/100;
    $.post("https://nation_creator/change", JSON.stringify({ key: key, value: player[key] }));
}

const confirmSelection = () =>{
    $(".container2").slideUp(500);
}


const changeSliderValue = (slider, el, v) => {
    let value = v;
    if (el && v == undefined) value = $(el).val();
    let second = 100 - value;
    let suffix = "";
    if (slider == "shapeMix" || slider == "skinMix") {
        suffix = "%";
        second = Math.floor(second);
        value = Math.floor(value);
    }
    $("."+slider+"-mom").text(second+suffix);
    $("."+slider+"-dad").text(value+suffix);
    $(el).val(value);
    player[slider] = parseFloat(value);
    if (slider == "shapeMix" || slider == "skinMix") player[slider] = parseFloat(value)/100;
    $.post("https://nation_creator/change", JSON.stringify({ key: slider, value: player[slider] }));
}



const changeGender = (gender) => {
    $(".gender-box").removeClass("gender-box-selected");
    $("."+gender).addClass("gender-box-selected");
    player.gender = gender;
    $.post("https://nation_creator/change", JSON.stringify({ key: "gender", value: player.gender }));
}



const setData = (genderChanged) => {
    if (!genderChanged) changeGender(player.gender);
    selectParent("shapeFirst", player.shapeFirst);
    selectParent("shapeSecond", player.shapeSecond);
    changeSliderValue("shapeMix", $("#shapeMix")[0], player.shapeMix * 100);
    changeSliderValue("skinMix", $("#skinMix")[0], player.skinMix * 100);
    for (let i in player) {
        let v = player[i];
        let el = $("#"+i);
        if (el.length && el.is("input")) {
            if (i != "shapeMix" && i != "skinMix") {
                if (player[i+"-max"])
                    $("#"+i).attr("max", player[i+"-max"]-1);
                $("."+i+"-dad").text(v);
                $(el).val(v);
            }
        }
        if ($("#"+i+"-value").length) $("#"+i+"-value").text(v);
        if ($("#"+i+"-color").length) {
            let color = colors[player[i+"-color"]];
            if (i == "makeup" || i == "lipstick" || i == "blush") 
                color = makeUpColors[player[i+"-color"]];
            if (color) {
                let r = color[0], g = color[1], b = color[2];
                $("#"+i+"-color").css("background", "rgb("+r+","+g+","+b+")");
            } else
                $("#"+i+"-color").css("background", "transparent");
            
            
        }
    }
    let color = colors[player["hair-highlightcolor"]];
    if (color) {
        let r = color[0], g = color[1], b = color[2];
        $("#hair-highlightcolor").css("background", "rgb("+r+","+g+","+b+")");
    } else
        $("#hair-highlightcolor").css("background", "transparent");
}






const buildChars = () => {
    let inner = "";
    for (let i = 0; i < charInfos.maxChars; i++) {
        let charName = lang.empty;
        let charId = icons.plus;

        if (charInfos.chars[i]) {
            let info = charInfos.chars[i];
            charName = info.name;
            charId = info.id;
        }

        let div = `<div class="char-selector" onclick="selectChar(${i}, this)">
            <p class="char-name">${charName}</p>
            <p class="char-id">${charId}</p>
        </div>`;
        inner += div;
    }
    $(".multichar-scroll").html(inner);
    $(".select-char").html(`<p>${lang.createChar}</p>`);
    $(".multichar-container2").slideUp(500);
}



const selectChar = (char, el) => {
    $(".char-selector").removeClass("char-selected");
    $(el).addClass("char-selected");
    $(".select-char").removeClass("select-char-inactive");
    let container = $(".multichar-container2");
    if (charInfos.chars[char]) {
        let info = charInfos.chars[char];
        let infos = ["name", "age", "gender", "bank", "registration", "phone"];
        for (let i in infos) {
            let v = infos[i];
            let id = "#char-"+v;
            $(id).html(info[v]);
        }
        container.slideUp(500,()=>{
            container.slideDown(500);
            $(".select-char").html(`<p>${lang.play}</p>`).attr("onclick", `buttonsF.playChar(${char})`);
            $(".delete-char").attr("onclick", `buttonsF.tryDeleteChar(${char})`);
        });  
    } else {
        $(".select-char").html(`<p>${lang.createChar}</p>`).attr("onclick", `buttonsF.createChar(${char})`);
        container.slideUp(500);
    }
    $.post("https://nation_creator/selectChar", JSON.stringify({ char: char }));
}



var btnDelay = false;
var buttons = ["playChar", "createChar", "tryDeleteChar"];
var buttonsF = {};

let btnCallbacks = {
    tryDeleteChar: (data) => {
        $("#yes").attr("onclick", `deleteChar(${data.char})`);
        $(".popup-loading p").text("");
        if (data.success) {
            $(".popup-text").html("<p>"+data.message+"</p>");
            $(".popup-container").fadeIn(500, ()=>{
                $(".popup").addClass("popup-active");
            });
        } else {
            $(".popup-text").html("<p>"+data.message+"</p>");
            $(".popup-container").fadeIn(500, ()=>{
                $(".popup").addClass("popup-active");
            });
            $(".popup-loading").addClass("popup-loading-active");
            $(".lds-ring").fadeIn(300);
            setTimeout(()=>{
                $(".lds-ring").fadeOut(300, ()=>{
                    $(".fail").addClass("icon-active");
                    $(".popup-loading p").text(data.message);
                    setTimeout(() =>{
                        deny();
                    },3000)
                });
            }, 2000);
        }
    }
}

const deleteChar = (char) =>{
    $(".popup-loading p").text("");
    $(".popup-loading").addClass("popup-loading-active")
    $(".lds-ring").fadeIn(300);
    $.post("https://nation_creator/deleteChar", JSON.stringify({ char: char }), (data)=>{
        let classe = ".fail";
        if (data.success){
            $(".select-char").html(`<p>${lang.createChar}</p>`).attr("onclick", "").addClass("select-char-inactive");
            $(".delete-char").attr("onclick", "");
            $(".multichar-container2").slideUp(500);
            classe = ".success";
        } 
        $(".popup-loading p").text(data.message);
        $(".lds-ring").fadeOut(300, ()=>{
            $(classe).addClass("icon-active");
            setTimeout(() =>{
                deny();
            },2000)
        });
    });
}

for (let i in buttons){
    let btn = buttons[i];
    buttonsF[btn] = (char) => {
        if (btnDelay) return;
        btnDelay = true;
        let cb =  btnCallbacks[btn];
        $.post("https://nation_creator/"+btn, JSON.stringify({ char: char }), cb);
        setTimeout(()=>{btnDelay = false;},3000);
    }
}




const buildSpawns = () =>{
    let inner = "";
    let container = $(".spawn-scroll");
    for (let i in spawns) {
        let index = Number(i);
        let spawn = spawns[i].name;
        let div = `<div class="spawn-select" onclick="selectSpawn(${index+1}, this)">
            <img src="${imgDir}spawn/${index+1}.png" alt=""><p>${spawn}</p>
        </div>`
        inner += div;
    }
    container.html(inner);
    $("#spawn-char").attr("onclick", "").addClass("spawn-char-inactive");
}

const selectSpawn = (spawn, el) => {
    $.post("https://nation_creator/changeSpawnCam", JSON.stringify({ spawn: spawn }), (data)=>{
        if (data) {
            $(".spawn-select").removeClass("spawn-selected");
            $(el).addClass("spawn-selected");
            $("#spawn-char").attr("onclick", `spawnChar(${spawn})`).removeClass("spawn-char-inactive");
        } 
    });
}


const spawnChar = (spawn) => {
    $.post("https://nation_creator/spawnChar", JSON.stringify({ spawn: spawn }));
}

// buildSpawns();


// buildContainer()

// buildParentSelection("dad")

// changeGender(player.gender)

// slide(false, 0, false);

// buildChars();