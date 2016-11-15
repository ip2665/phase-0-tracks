//accept string argument
//iterate backward letter by letter from the argument 
//add each letter to new variable
//return the new variable

function reverse(word) {
	var newWord = "";

	for (var i = word.length-1; i >= 0; i--) {

		newWord += word[i];
	}
	return newWord;
}

var theWord = "";
theWord = reverse("hello");

if (1 == 1) {
	console.log(theWord);
}