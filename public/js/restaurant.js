//Class Deffinition, and Intialize Method
var Restaurant = function(name, address){
  //Define Attributes
  this.name = name;
  this.address = address;
  this.menuItems = [];
}

//Instance Methods
Restaurant.prototype.toS = function(){
  return "Name: " + this.name + "Address: " + this.address;   
}

Restaurant.prototype.addMenuItem = function(menuItem){
  this.menuItems.push(menuItem)
}

Restaurant.prototype.totalCost = function(){

  total = this.menuItems.reduce(function(amount, item){
    return amount += item.price
  }, 0)

  return total;

}

//Class Method
Restaurant.all = function(){
  console.log('Find Me All the Restaurants');
}


var MenuItem = function(name,price){
  this.name = name;
  this.price = price;
}

rest = new Restaurant('zacks','123 wall');
mi1 = new MenuItem('frog legs', 10);
mi2 = new MenuItem('fox stew', 9);
mi3 = new MenuItem('cashews', 5);

rest.addMenuItem(mi1)
rest.addMenuItem(mi2)
rest.addMenuItem(mi3)

