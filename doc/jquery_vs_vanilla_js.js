function refresh() {
  $.get('/channel', function(html) {
      var newDocument = $.data.parseHTML(html);
      var oldChannel = $('.channel');
      var newChannel = newDocument.find('.channel');
      oldChannel.html(newChannel.html());
  });
}

setInterval(1000, refresh);




function refresh() {
  var request = new XMLHttpRequest();
  request.open('GET', '/channel', true);
  request.onload = function() {
    var newHtml = request.responseText;
    var parser = new DOMParser();
    var newDocument = parser.parseFromString(newHtml, 'text/html');
    var newChannel = newDocument.querySelector('.channel');
    var oldChannel = document.querySelector('.channel');
    oldChannel.innerHTML = newChannel.innerHTML;
  };
  request.send();
};


setInterval(1000, refresh);





function search() {
  var queryInput = document.querySelector('.query');
  var query = queryInput.value;
  var messageElements = document.querySelectorAll('.message');
  for (var i = 0; i < messageElements.length; i++) {
    var messageElement = messageElements[i];
    var text = messageElement.textContent;
    var isMatch = (text.indexOf(query) != -1);
    if isMatch {
      messageElement.style.display = 'block';
    } else {
      messageElement.style.display = 'hidden';
    }
  }
}


var queryInput = document.querySelector('.query');
queryInput.addEventListener(search);



