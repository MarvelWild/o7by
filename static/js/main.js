// bulma hepers
// $(document).ready(function() {
//
//   // Check for click events on the navbar burger icon
//   $(".navbar-burger").click(function() {
//
//       // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
//       $(".navbar-burger").toggleClass("is-active");
//       $(".navbar-menu").toggleClass("is-active");
//
//   });
// });

// no jquery
(function() {
	// var burger = document.querySelector('.nav-toggle');
	// var menu = document.querySelector('.nav-menu');

	var burger = document.querySelector('.navbar-burger');
	var menu = document.querySelector('.navbar-menu');
	burger.addEventListener('click', function() {
		burger.classList.toggle('is-active');
		menu.classList.toggle('is-active');
	});
})();


function clipbpard_set(text) {
	var textArea = document.createElement("textarea");
	textArea.value = text;

	// Avoid scrolling to bottom
	textArea.style.top = "0";
	textArea.style.left = "0";
	textArea.style.position = "fixed";

	document.body.appendChild(textArea);
	textArea.focus();
	textArea.select();

	try {
		var successful = document.execCommand('copy');
		var msg = successful ? 'successful' : 'unsuccessful';
		console.log('Fallback: Copying text command was ' + msg);
	} catch (err) {
		console.error('Fallback: Oops, unable to copy', err);
	}

	document.body.removeChild(textArea);
}
