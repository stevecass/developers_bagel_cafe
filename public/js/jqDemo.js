$(document).ready(function(){
  $('.expander > a').on('click', function(event){
    toggleDetails( $(event.target).closest('.restaurant'));
  });


  $('#restaurant-list > a').on('click', function(event){
    event.preventDefault();

    var requestUrl = $(event.target).attr('href');

    requestOptions = {url: requestUrl, 
                      method: 'get',
                      data: '' , 
                      dataType: 'html'};
    
    var deferredObject = $.ajax(requestOptions);

    deferredObject.done(function(response){
      $('#restaurant-list').prepend(response);
    });

    deferredObject.fail(function(response){
      console.log(response);
    });
  });



});

var toggleDetails = function(elm){
  $(elm).children('.details').toggle();
}