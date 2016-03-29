
// Scroll to page bottom on load, but only if body class matches...

var endlessScroll = {
  scrollToBottom: function() {
        console.log("this ran");
    var windowHeight = $(window).height();
    $(window).scrollTop(200000000000000);
  }
};


var ready = function() {
  if ($('body.conversations_show').length !== 0) {
    endlessScroll.scrollToBottom();
  }
};

$(document).ready(ready);
$(document).on('page:load', ready);
