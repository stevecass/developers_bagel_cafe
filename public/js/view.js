var MenuItemIndex = function(){

}

MenuItemIndex.prototype.showItems = function(items){
  items.forEach(function(item){
    $('#item-list').append( this.toHtml(item) );
  }.bind(this));

}

MenuItemIndex.prototype.toHtml = function(menuItem){
  return ["<div class='menu-item'>",
  "<div class='item-name'>" + menuItem.name +"</div>",
  "<div class='item-price'>"+ menuItem.price +"</div>",
  "</div>"].join();
}