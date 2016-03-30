var chosenSelect = function() {
  $(function() {
    return $('.chosen-select').chosen({
      allow_single_deselect: true,
      no_results_text: 'No results matched',
      width: '100%',
      placeholder_text_multiple: "Select contacts...",
    });
  });

};



$(document).ready(chosenSelect);
$(document).on('page:load', chosenSelect);
