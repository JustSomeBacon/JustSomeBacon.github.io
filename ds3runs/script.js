// "Generate" button
$('#generate').click(function() {
	// Enable lower section
	$("#lower").removeClass("hidden");

	// Scroll to lower section
	$('html, body').animate({
		scrollTop: $('#lower').offset().top
	}, 1200);
});

// "Generate Another" button
$('#generate-another').click(function() {
	// Prevent URL change
	event.preventDefault()

	// Scroll to upper section
	$('html, body').animate({
		scrollTop: $('#upper').offset().top
	}, 900);
});
