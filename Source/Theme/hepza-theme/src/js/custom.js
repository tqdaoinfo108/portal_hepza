$(function () {
	var Accordion = function (el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.link');
		// Evento
		links.on('click', { el: this.el, multiple: this.multiple }, this.dropdown)
	}

	Accordion.prototype.dropdown = function (e) {
		var $el = e.data.el;
		$this = $(this),
			$next = $this.next();

		$next.slideToggle();
		$this.parent().toggleClass('open');

		if (!e.data.multiple) {
			$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
		};
	}

	var accordion = new Accordion($('#accordion'), false);
});

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