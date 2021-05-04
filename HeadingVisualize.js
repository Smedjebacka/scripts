["h1", "h2", "h3", "h4"].forEach(tag => {
    for (let htmlcoll of document.getElementsByTagName(tag)) {
        htmlcoll.innerText = `${tag.toUpperCase()}: ${htmlcoll.innerText}`;
    }
});