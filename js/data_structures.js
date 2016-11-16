var colors = ["Blue","Black","White","Brown"]
var names = ["Biscuit","Cookie","Chocolate","Caramel"]


//driver code that add one element to each array
console.log(colors);
console.log(names);
colors.push("Spotty");
names.push("Candy");
console.log(colors);
console.log(names);


//Object declaration
var horses = {}


//Code to build object elements
for (i = 0; i < names.length ; i++ ) {
		horses[names[i]] = colors[i];
}

//Display the object elements
console.log(horses);