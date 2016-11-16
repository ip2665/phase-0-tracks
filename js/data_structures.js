var colors = ["Blue","Black","White","Brown"]
var names = ["Biscuit","Cookie","Chocolate","Caramel"]


//driver code that add one element to each array
console.log(colors);
console.log(names);
colors.push("Spotty");
names.push("Candy");
console.log(colors);
console.log(names);


//Hash like behavior Object declaration
var horses = {}


//Code to build object elements
for (i = 0; i < names.length ; i++ ) {
		horses[names[i]] = colors[i];
}

//Display the object elements
console.log(horses);


//Class like behavior Object

function Dog(name, age, isGoodDog) {
	// In this context, 'this' refers to 
	// the individual dog we're making
	console.log("Our new dog:", this);
	
	// Therefore, this.name is sort of the Ruby
	// equivalent of @name
	this.name = name;
	this.age = age;
	this.isGoodDog = isGoodDog;
	
	// As for behavior, a function is a perfectly 
	// valid property value ... whoa!
	this.bark = function() { console.log("Woof!"); };
	
	console.log("DOG INITIALIZATION COMPLETE");
}


function Car (name,color){
		this.name = name; //@name = name -- in ruby
		this.color = color;

		this.speed = function() { console.log ("It goes super fast");} ;
//		this.stop = function() {console.log ("It stop!!!!");}	;
}


var newCar = new Car("Ferrari","Yellow")

console.log(newCar);
newCar.speed();
newCar.stop = function() {console.log ("It Stop!!!!!!");};
newCar.stop();

console.log(newCar);
console.log (newCar.name);
newCar.name = "HONDA";
console.log(newCar);
var the_key = ""

//Iterate through Object 
for (i=0 ; i < Object.keys(newCar).length; i++){
    the_key = Object.keys(newCar)[i];
 	console.log(the_key+" "+newCar[the_key]);

}

