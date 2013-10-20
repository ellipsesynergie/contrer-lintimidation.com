
$(document).ready(function() {

	$('body > ol > li > article').flexVerticalCenter();

	$('.curtains').curtain({
        scrollSpeed: 400,
        curtainLinks: '.down'
    });

    $('#share > a').on('click', function() {
    	$('#share > ul').toggle();
    	return false;
    });
});