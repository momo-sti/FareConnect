(() => {
  // app/javascript/map_canvas.js
  document.addEventListener("DOMContentLoaded", function() {
    const headerHeight = document.querySelector("header").offsetHeight;
    const footerHeight = document.querySelector("footer").offsetHeight;
    const mapCanvas = document.querySelector("#map_canvas");
    mapCanvas.style.height = `calc(100vh - ${headerHeight}px - ${footerHeight}px)`;
  });
})();
//# sourceMappingURL=assets/map_canvas.js.map
