var GiphSelection = {
  clearSelected: function() {
    $('.selected_giph').removeClass('selected_giph');
  },
  setSelected: function(element) {
    element.addClass('selected_giph');
    $('#giph_id').val(element.data('giph-id'));
  },
  addListeners: function() {
    $('.giph_select_img_container').on('click', function() {
      clicked_element = $(this);
      GiphSelection.clearSelected();
      GiphSelection.setSelected(clicked_element);
    });
  }
};


$(document).ready(GiphSelection.addListeners);
$(document).on('page:load', GiphSelection.addListeners);
