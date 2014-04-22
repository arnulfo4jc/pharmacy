$(document).ready(function(){
	$('.toolDelete').tooltip();
	$('.toolEdit').tooltip();
	$('.toolList').tooltip();
	$('.toolAvatar').tooltip();
	$('.carousel').carousel()
});
if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}


