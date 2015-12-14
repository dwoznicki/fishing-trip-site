$(document).ready(function() {
	rotateBackground();
	showLogin();
});

function rotateBackground() {
	$('#slideshow').cycle({
		fx: 'fade',
		pager: '#smallnav',
		pause:   1,
		speed: 2000,
		timeout:  4000
	});
};

function showLogin() {
	$(document).on("click", "a#login", function(e) {
		e.preventDefault();
		if ($(".login-container").is(":hidden")) {
			$(".login-container").slideDown(300);
		} else {
			$(".login-container").slideUp(300);
		};
	});
};
