(() => {
  // app/javascript/gasoline.js
  document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("gasoline-form");
    form.addEventListener("submit", function(e) {
      e.preventDefault();
      const formData = new FormData(form);
      const XHR = new XMLHttpRequest();
      XHR.open("POST", "/calculate", true);
      XHR.responseType = "json";
      XHR.send(formData);
      XHR.onload = function() {
        if (XHR.status != 200) {
          alert(`Error ${XHR.status}: ${XHR.statusText}`);
        } else {
          document.getElementById("cost").innerText = `\u30AC\u30BD\u30EA\u30F3\u4EE3\u306F ${XHR.response.cost} \u5186\u3067\u3059`;
        }
      };
    });
  });
})();
//# sourceMappingURL=assets/gasoline.js.map
