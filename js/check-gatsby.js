var c = chrome || browser;

var isGatsby = document.getElementById("___gatsby") !== null;

c.runtime.sendMessage({ isGatsby: isGatsby });
