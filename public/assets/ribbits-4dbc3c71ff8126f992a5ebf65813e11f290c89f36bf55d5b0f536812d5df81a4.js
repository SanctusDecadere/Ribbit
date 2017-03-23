(function() {
  var button, count, countChars, textarea;

  textarea = document.getElementById('ribbitText');

  count = document.getElementById('charCount');

  button = document.getElementById('ribbitBtn');

  countChars = function(e) {
    var len;
    len = textarea.value.length;
    count.innerHTML = len;
    if (len > 140) {
      count.className = "limit";
      return button.setAttribute("disabled", "disabled");
    } else {
      count.Classname = "";
      return button.removeAttribute("disabled");
    }
  };

  textarea.addEventListener("keyup", countChars, false);

  textarea.addEventListener("keydown", countChars, false);

}).call(this);
