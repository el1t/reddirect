(function() {
    var url = new URLSearchParams(window.location.search).get("url");
    if (url && /^https:\/\/(i|preview)\.redd\.it\//.test(url)) {
        document.body.innerHTML = '<img src="' + url.replace(/"/g, "&quot;") + '" style="max-width:100%;max-height:100vh;object-fit:contain">';
        document.body.style.cssText = "margin:0;display:flex;align-items:center;justify-content:center;min-height:100vh;background:#000";
    }
})();
