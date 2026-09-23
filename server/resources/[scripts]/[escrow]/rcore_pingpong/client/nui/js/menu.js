var index = 0;
var totalItems = 0;
var displayIndex = 1;
var currentDescription = null;
var titleDescriptionColor = 'rgb(255, 255, 255)';

var AppInput = new Vue({
    el: '#input',
    data:
    {
        identifier: null,
        titleMenu: "rcore",
        float: "middle_screen",
        position: "middle_screen",
        ChooseText: "Accept",
        CloseText: "Close",
        message: "",
        visible: false,
        defaultTextInfront: '$',
    },

    methods: {
        Choose: function () {
            $.post('https:///inputmethod', JSON.stringify({
                identifier: this.identifier,
                message: this.message,
            }));
        },
        Close: function () {
            $.post(`https://${GetParentResourceName()}/close`, JSON.stringify({
                identifier: this.identifier,
            }));
        },
    },
});

var App = new Vue({
    el: '#menu',
    data:
    {
        identifier: null,
        titleMenu: "rcore",
        float: "left",
        position: "middle",
        visible: false,
        menu: [],
    },
});

var Notify = new Vue({
    el: '#notifyBar',
    data: {
        visible: false,
        mugshot: null,
        content: '',
    },
});

function GetDisplayIndex(currentIndex) {
    let count = 1;
    for (let index = 0; index < App.menu.length; index++) {
        var o = App.menu[index];
        var oIndex = o.number - 1;
        if (o.black || !o.visible) {
            continue;
        }
        if (oIndex == currentIndex) {

            break;
        }
        count++;
    }
    return count;
}
/*
function GetNextAvailableIndex(currentIndex, direction) {
    var increment = direction === "down" ? 1 : -1;
    var newIndex = currentIndex;

    do {
        newIndex = (newIndex + increment + App.menu.length) % App.menu.length;
        if (App.menu[newIndex].black || App.menu[newIndex].type == 6 || !App.menu[newIndex].enabled || !App.menu[newIndex].visible) {
            continue;
        }
        return newIndex;
    } while (newIndex !== currentIndex);
    return currentIndex;
}*/

function GetNextAvailableIndex(currentIndex, direction) {
    var increment = direction === "down" ? 1 : -1;
    var newIndex = currentIndex;
    var maxIterations = App.menu.length; // Set a reasonable maximum number of iterations

    for (var i = 0; i < maxIterations; i++) {
        newIndex = (newIndex + increment + App.menu.length) % App.menu.length;
        if (!App.menu[newIndex].black && App.menu[newIndex].type !== 6 && App.menu[newIndex].enabled && App.menu[newIndex].visible) {
            return newIndex;
        }
    }

    // If no available index is found after the maximum iterations, return the current index
    return currentIndex;
}


function ScrollToIndex(index) {
    const scrolldiv = document.getElementById('scrolldiv');

    const scrollIndex = index >= 8 ? index : 0;
    const element = scrolldiv.children[scrollIndex];
    if (element) {
        const elementBottom = element.offsetTop + element.clientHeight;
        const containerHeight = scrolldiv.clientHeight;
        const scrollTo = Math.max(elementBottom - containerHeight, 0);

        scrolldiv.scrollTo({
            top: scrollTo,
            behavior: 'smooth'
        });
    }


}

function MoveDown() {
    var lastIndex = index;
    index = GetNextAvailableIndex(index, "down")
    displayIndex = GetDisplayIndex(index)
    // document.getElementById('scrolldiv').scrollTop = index > 6 ? (38 * (index - 6)) : 0
    ScrollToIndex(index);
    setActiveMenuIndex(index, true)
    currentDescription = App.menu[index].description;
    $.post(`https://${GetParentResourceName()}/selectNew`, JSON.stringify({
        index: App.menu[index].number,
        identifier: App.identifier,
        newIndex: App.menu[index].number,
        oldIndex: App.menu[lastIndex].number,
    }));
}

function setActiveMenuIndex(index_, active_) {
    for (var i = 0; i < App.menu.length; i++) { App.menu[i].active = false }
    if (App.menu[index_] != null) App.menu[index_].active = active_
    index = index_;
}


// Menu
$(function () {
    function display(bool) {
        App.visible = bool;
    }
    display(false);
    window.addEventListener('message', function (event) {
        var item = event.data;
        if (item.type === "reset") {
            totalItems = 0
            App.menu = [];
        }

        if (item.type === "notifybar") {
            Notify.mugshot = item.mugData;
            Notify.content = item.content;
            Notify.visible = item.content !== null && item.content.length > 1;
        }

        if (item.type === "labelchangeindex") {

            var index_ = item.index - 1
            var currentItem = App.menu[index_];
            var items = currentItem.items;
            var newIndex = item.listIndex - 1

            currentItem.displayLabel = items[newIndex];
            currentItem.listIndex = newIndex;

            $.post(`https://${GetParentResourceName()}/updateLabel`, JSON.stringify({
                index: currentItem.number,
                listIndex: newIndex + 1,
                label: currentItem.label,
                displayLabel: items[newIndex],
                identifier: App.identifier,
            }));
        }

        if (item.type === "itemchangedescription") {

            var index_ = item.index - 1
            var currentItem = App.menu[index_];
            currentItem.description = item.description
            currentDescription = App.menu[index].description;
            setActiveMenuIndex(index, true)

            $.post(`https://${GetParentResourceName()}/updateDescription`, JSON.stringify({
                index: currentItem.number,
                description: currentItem.description,
                identifier: App.identifier,
            }));
        }

        if (item.type === "itemchangeitems") {
            var index_ = item.index - 1
            var currentItem = App.menu[index_];
            currentItem.items = JSON.parse(item.data)
            currentItem.displayLabel = currentItem.items[0];
            currentItem.listIndex = 0;

            $.post(`https://${GetParentResourceName()}/updateItems`, JSON.stringify({
                index: currentItem.number,
                data: currentItem.items,
                identifier: App.identifier,
            }));
        }

        if (item.type === "itemchangelabel") {

            var index_ = item.index - 1
            var currentItem = App.menu[index_];

            if (item.secondLabel) {
                currentItem.secondLabel = item.secondLabel
                currentItem.displayLabel = item.secondLabel
            }
            if (item.label) {
                currentItem.label = item.label
            }

            $.post(`https://${GetParentResourceName()}/itemupdateLabel`, JSON.stringify({
                index: currentItem.number,
                listIndex: newIndex,
                label: currentItem.label,
                secondLabel: currentItem.secondLabel,
                identifier: App.identifier,
            }));
        }

        if (item.type === "addpack") {
            item.pack.forEach(pack => {
                const displayLabel = pack.data && pack.data.length > 0 ? pack.data[0] : "Unnamed";
                if (typeof pack.black === 'undefined' && pack.visible && pack.itemType != 6) {
                    totalItems++;
                }
                var o = {
                    type: pack.itemType,
                    label: pack.label,
                    enabled: pack.enabled,
                    visible: pack.visible,
                    description: pack.description,
                    checked: pack.checked,
                    number: pack.index,
                    secondLabel: pack.secondLabel,
                    mugShot: pack.mugShot,
                    active: false,
                    listIndex: 0,
                    displayLabel: displayLabel,
                    items: pack.data,
                    black: pack.black,
                    checked: pack.checked,
                }

                if (o.type == 2) {
                    o.listIndex = pack.listIndex - 1;
                    o.displayLabel = o.items[o.listIndex];
                }

                App.menu.push(o);
            });
        }
        if (item.type === "title") {
            App.titleMenu = item.title
            titleDescriptionColor = "rgb(" + item.color[0] + ", " + item.color[1] + ", " + item.color[2] + ")"
        }

        if (item.type === "toggleitemenabled") {
            var index_ = item.index - 1;
            if (App.menu[index_]) {
                App.menu[index_].enabled = item.enabled;
                if (index == index_ && !item.enabled) {
                    MoveDown()
                }
            }
        }

        if (item.type === "togglecheck") {
            var index_ = item.index - 1;
            if (App.menu[index_]) {
                App.menu[index_].checked = item.checked;
                $.post(`https://${GetParentResourceName()}/updatecheck`, JSON.stringify({
                    index: App.menu[index_].number,
                    checked: item.checked,
                    identifier: App.identifier,
                }));
            }
        }

        if (item.type === "ui") {
            display(item.status);
            if (item.properties) {
                App.float = item.properties.float;
                App.position = item.properties.position;
            }
            App.identifier = item.identifier;
            index = GetNextAvailableIndex(-1, "down")
            displayIndex = GetDisplayIndex(index)
            currentDescription = App.menu[index].description;
            setActiveMenuIndex(index, true)

            $.post(`https://${GetParentResourceName()}/open`, JSON.stringify({
                index: App.menu[index].number,
                identifier: App.identifier,
            }));
        }

        if (item.type === "togglevisibility") {
            App.visible = item.status;
        }

        if (App.visible && !AppInput.visible) {
            if (item.type === "enter") {
                $.post(`https://${GetParentResourceName()}/clickItem`, JSON.stringify({
                    index: App.menu[index].number,
                    label: App.menu[index].label,
                    displayLabel: App.menu[index].displayLabel,
                    identifier: App.identifier,
                }));
            }

            if (item.type === "left") {
                var currentItem = App.menu[index];
                var currentIndex = currentItem.listIndex;
                var items = currentItem.items;
                var newIndex = currentIndex === 0 ? items.length - 1 : currentIndex - 1;

                currentItem.displayLabel = items[newIndex];
                currentItem.listIndex = newIndex;

                $.post(`https://${GetParentResourceName()}/updateLabel`, JSON.stringify({
                    index: currentItem.number,
                    listIndex: newIndex + 1,
                    label: currentItem.label,
                    displayLabel: items[newIndex],
                    identifier: App.identifier,
                }));
            }

            if (item.type === "right") {
                var currentItem = App.menu[index];
                var currentIndex = currentItem.listIndex;
                var items = currentItem.items;
                var newIndex = currentIndex === items.length - 1 ? 0 : currentIndex + 1;

                currentItem.displayLabel = items[newIndex];
                currentItem.listIndex = newIndex;

                $.post(`https://${GetParentResourceName()}/updateLabel`, JSON.stringify({
                    index: currentItem.number,
                    listIndex: newIndex + 1,
                    label: currentItem.label,
                    displayLabel: items[newIndex],
                    identifier: App.identifier,
                }));
            }

            if (item.type === "up") {
                var lastIndex = index;
                index = GetNextAvailableIndex(index, "up")
                displayIndex = GetDisplayIndex(index)
                //document.getElementById('scrolldiv').scrollTop = index > 6 ? (38 * (index - 6)) : 0
                ScrollToIndex(index);
                setActiveMenuIndex(index, true)
                currentDescription = App.menu[index].description;
                $.post(`https://${GetParentResourceName()}/selectNew`, JSON.stringify({
                    index: App.menu[index].number,
                    identifier: App.identifier,
                    newIndex: App.menu[index].number,
                    oldIndex: App.menu[lastIndex].number,
                }));
            }

            if (item.type === "down") {
                MoveDown();
            }
        }
    })
});
