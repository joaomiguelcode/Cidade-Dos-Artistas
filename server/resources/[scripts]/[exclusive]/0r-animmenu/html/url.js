function en(url) {
    return btoa(url)
}

function de(url) {
    return atob(url)
}

function getUrl(category, name) {
    let url = `https://pascripts.xyz/zeroranim/${category}/${name}.webp`;
    return en(url)
}

function getUrlImg(category, name) {
    let url = `https://pascripts.xyz/zerorphoto/${category}/${name}.webp`;
    return en(url)
}

function getMenuUrl(category) {
    let url = `https://pascripts.xyz/2K=£1d&7Af{o/menu/${category}.svg`;
    return en(url)
}