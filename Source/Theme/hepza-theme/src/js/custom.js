
function myFunction() {
	var x = document.getElementById("myTopnav");
	if (x.className === "nav justify-content-between") {
		x.children.forEach(element => {
			if(element.className === "nav-item" || element.className === "nav-item dropdown"){
				element.style.display = "block";
			}
		});
		x.className += " responsive block";
	} else {
		for(var i =1; i<= x.children.length - 2; i++){
			x.children[i].style.display = "none";
		}
		x.className = "nav justify-content-between";
	}
}