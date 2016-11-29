var header = document.getElementsByTagName('h1')
header[0].style.background = "red"



function italics(event) {
	console.log("This has been italicized:");
	event.target.style.fontStyle = "italic";
}
var strong = document.getElementsByTagName('strong')
strong[0].addEventListener("click", italics)