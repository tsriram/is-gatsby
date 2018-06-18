var c = chrome || browser;

c.runtime.onMessage.addListener(function(request, sender) {
  var tabId = sender.tab.id;
  if (request.isGatsby) {
    c.pageAction.show(tabId);
    c.pageAction.setIcon({ tabId, path: "icons/icon32.png" });
    c.pageAction.setTitle({
      tabId,
      title: "This page is built using Gatsby :D"
    });
  } else {
    c.pageAction.hide(tabId);
    c.pageAction.setIcon({ tabId, path: "icons/icon-gray32.png" });
    c.pageAction.setTitle({
      tabId,
      title: "This page doesn't appear to be built with Gatsby :("
    });
  }
});
