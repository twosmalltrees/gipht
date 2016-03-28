// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/



var gifShotFunctions = {
  recordGif: function() {
    gifshot.createGIF(gifShotFunctions.getGifOptions(), function (obj) {
      if (!obj.error) {
        var image = obj.image, animatedImage = document.createElement('img');
        animatedImage.src = image;
        $(animatedImage).addClass('make_gif_display');
        $('.gif_display').html(animatedImage);
        $('.gif_record_button').addClass('hidden');
        $('.gif_discard_button').removeClass('hidden');
        $('.gif_save_button').removeClass('hidden');
        $('#webcam_feed').hide();
        $('#gif_data').attr('value', image);

      }
    });
  },
  getGifOptions: function() {
    //  Get any options to pass through to GIFSHOT
    gif_text = $('#gif_text').val();
    gif_length = $('#gif_length').val();
    gif_text_color = $('#gif_text_color').val();
    return {
      'text': gif_text,
      'fontColor': gif_text_color,
      'numFrames': gif_length,
      'resizeFont': true,
      'minFontSize': '6px',
      'textYCoordinate': 135,
      'gifHeight': 150,
      'gifWidth': 200
    };
  },
  addClickHandlers: function() {
    $('.gif_record_button').on('click', function() {
      gifShotFunctions.recordGif();
    });
  }
};

var videoStream = {
  launchVideoStream: function() {
    navigator.getUserMedia = navigator.getUserMedia ||
                             navigator.webkitGetUserMedia ||
                             navigator.mozGetUserMedia;

    if (navigator.getUserMedia) {
       navigator.getUserMedia({ audio: false, video: { width: 400, height: 400 } },
          function(stream) {
             var video = document.querySelector('#webcam_feed');
             video.src = window.URL.createObjectURL(stream);
             video.onloadedmetadata = function(e) {
               video.play();
             };
          },
          function(err) {
             console.log("The following error occurred: " + err.name);
          }
       );
    } else {
       console.log("getUserMedia not supported");
    }
  }
};



var ready = function() {
  if ($('#webcam_feed').length) {
    videoStream.launchVideoStream();
    gifShotFunctions.addClickHandlers();
  }
};

$(document).ready(ready);
$(document).on('page:load', ready);
