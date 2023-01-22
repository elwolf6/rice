function sauce(info, tab){ chrome.tabs.create({ "url": "http://saucenao.com/search.php?url="+escape(info.srcUrl), selected: false }); }
function scanModul(info, tab){}
chrome.contextMenus.removeAll();
chrome.contextMenus.create({"title": "Get Sauce", "contexts": [ "image" ], "onclick": sauce});
