$(document).ready(function(){
  $('.expander > a').on('click', function(event){
    toggleDetails( $(event.target).closest('.restaurant'));
  });


  $('#restaurant-list a').on('click', function(event){
    event.preventDefault();
    restaurantId = $(event.target).data().id;
    
    $.ajax($(event.target).attr('href')).done(function(response){
        $('#restaurant-' + restaurantId).html(response);
      }).fail(function(response){
        console.log(response);
    });
  });

  $('#add-restaurant').on('click', function(event){
    event.preventDefault(); 
    var url = $(event.target).attr('href');

    $.ajax(url).done(function(response){
      $('#add-restaurant').hide();
      $('#new-restaurant').append(response);
    }).fail(function(response){
      console.log(response);
    });
  });

  //event delegation
  //we always change the event, to the parent container thats on the page
  // when the page loads
  // The new restaurant div, is listening for a submit event, from the form with id create-restaurant
  $('#new-restaurant').on('submit','form#create-restaurant',function(event){
    event.preventDefault();

    var options = {url: $(event.target).attr('action'),
     method: $(event.target).attr('method'),
     data:   $(event.target).serialize(),
     dataType:  'html'};

     $.ajax(options).done(function(response){
        $('#add-restaurant').show();
        $('form#create-restaurant').remove();
        $('ul').append("<li>" + response + "</li>");
     }).fail(function(response){
        console.log(response);
     });

  });

});

var toggleDetails = function(elm){
  $(elm).children('.details').toggle();
}