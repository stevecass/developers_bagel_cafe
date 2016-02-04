var Controller = function(view){
  this.view = view; 
}

Controller.prototype.MenuItemIndex = function() {
  var self = this;
   MenuItem.all().then(function(allItems){
    this.view.showItems( allItems );
  }.bind(self));

};