function longestWord(anArray){
        var longest_Word = ""

        for (i=0; i < anArray.length ; i++) {
        	if (longest_Word.length < anArray[i].length){
        		longest_Word = anArray[i];
        	}
        }

        return longest_Word;
}


function key_valueMatch(object1,object2){
	var ob1_key = ""
	var ob2_value = ""
	var ob2_key = ""
	var ob2_value = ""

	//Iterate through object1
	for (i=0; i < Object.keys(object1).length; i++){
		// retrieve the object1 key and value
		ob1_key = Object.keys(object1)[i];
		ob1_value = object1[ob1_key];

		//Iterate through object2 for key-value match
		for (j=0; j< Object.keys(object2).length; j++){
			// retrieve the object2 key
			ob2_key = Object.keys(object2)[j];
			ob2_value = object2[ob2_key];
			
			//Return true if key-value match found
			if (( ob1_key == ob2_key ) && (ob1_value == ob2_value)){
				return true
			}
		}
	}
	return false

}

var arrayVariable = ["long phrase","longest phrase","longer phrase"]

console.log(longestWord(arrayVariable));

//for (i=0 ; i < Object.keys(newCar).length; i++){
//    the_key = Object.keys(newCar)[i];
// 	console.log(the_key+" "+newCar[the_key]);
//}
var obj1 = {name: "Steven", age: 53}
var obj2 = {name: "Tamir", age: 54}

console.log(key_valueMatch(obj1,obj2));

obj1["age"] = 54;
console.log(key_valueMatch(obj1,obj2));

obj1.age = 53;
console.log(key_valueMatch(obj1,obj2));