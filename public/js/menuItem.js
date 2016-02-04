var menuItems = [];

var MenuItem = function(name,price){
  this.name = name;
  this.price = price;
}

MenuItem.all = function(){
  return $.ajax('/menu_items.json',{dataType: 'json'}).then(function(items){
    return items.map(function(curr_item){
      return new MenuItem(curr_item.name, curr_item.price)   
    });
  });
}