// ==UserScript==
// @name            Compact Toolbar
// @version         1.0
// @description     Combine tab bar and tool bar
// ==/UserScript==

const { ff = document } = window;

const getI = id => ff.getElementById(id);

(function() {

  [
    "urlbar-container",
    "unified-extensions-button",
    "PanelUI-button",
  ].map(id => getI(id)).map(element => {
      ff.querySelector("#TabsToolbar .toolbar-items").prepend(element);
    });

  getI("browser").after(getI("navigator-toolbox"));
})();
