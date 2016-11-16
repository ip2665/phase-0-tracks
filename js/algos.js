function longestWord(anArray){
        var longest_Word = ""

        for (i=0; i < anArray.length ; i++) {
        	if (longest_Word.length < anArray[i].length){
        		longest_Word = anArray[i];
        	}
        }

        return longest_Word;
}


var arrayVariable = ["long phrase","longest phrase","longer phrase"]

console.log(longestWord(arrayVariable));