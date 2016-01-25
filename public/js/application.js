console.log("hello world");

var setValues = function(){
  myName = "Zack Mance";
  var theWorldIsAWackyPlace = true;
  return "That Went Okay";
}

setValues();

var myArry = [1,2,3,4,5,6,7,8,9];

var mappedArray = myArry.map(function(currentValue, index, array){
  return "Your Value is " + currentValue + " And is at Index " + index ;
});

for(var x = 0; x < myArry.length; x++ ){
  console.log("Your Value is " + myArry[x] + " And is at Index " + x);
}

if( true){
  console.log("Duh True is True");
}

if (1 ){
  console.log("One is True");
}

if( 0){
  console.log("Zero is True");
}else{
  console.log("Zero is False");
}

if(undefined){
  console.log("undefined is truthy");
}else{
  console.log("undefined is falsy");
}

var myObject = {};

myObject['fixSticks'] = "Yummy";
myObject.chickenFingers = "Blergh";

console.log(myObject.fixSticks);
console.log(myObject.chickenFingers);

myObject.doSomethingAwesome = function(awesomeThing){
  console.log("Zack Do " + awesomeThing + " cause It's awesome!");
};










