//Review Lectures Ajax Code 


//As a user I want to be able to add a menu item to a restaurant.

$(document).ready(function(){
  $('#add-item').on('click',function(event){
    event.preventDefault();

    //for an ajax request... I need a few things.

    // 1. Where I am going.
    // 2. The method i will use to there.
    // 3. If any information needs sent back
    // 4. What I am expecting back. 
    var $myTarget = $(event.target);

    var options = { url: $myTarget.attr('href'),
                    method: 'get' ,
                    data: '', 
                    dataType: 'html'};

    //calling the ajax method with Jquery
    $.ajax(options).done(function(response){
      $('#add-item').hide();
      $('#add').append(response);
    }).fail(function(response){
      console.log(response);
    });
  });

  $('#add').on('submit','#do-stuff',function(event){
    event.preventDefault();

    var options = {
      url: $(event.target).attr('action'),
      method:$(event.target).attr('method'),
      data: $(event.target).serialize(),
      dataType: 'json'
    }

     $.ajax(options).done(function(response){
        $('#item-list').prepend( makeMenuItemHtml(response) );
        $('#add-item').show();
        $('#do-stuff').remove();
     }).fail(function(response){
      console.log(response);
     });
  });
})


function makeMenuItemHtml(menuItem){
return ["<div class='menu-item'>",
  "<div class='item-name'>" + menuItem.name +"</div>",
  "<div class='item-desc'>" + menuItem.description + "</div>",
  "<div class='item-price'>"+ menuItem.price +"</div>",
  "</div>"].join();
}

