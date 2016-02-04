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




