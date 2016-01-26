$(document).ready(function(){

  $('.expander > a').on('click', function(event){
    toggleDetails( $(event.target).closest('.restaurant'));
  });
});

var toggleDetails = function(elm){
  $(elm).children('.details').toggle();
}