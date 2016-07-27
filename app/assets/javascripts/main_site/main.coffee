$(document).on 'turbolinks:load', ->
	$(".button-collapse").sideNav();
	$('#slider').slider()
	$('.parallax').parallax();

	# set active tab
	console.log window
	if !window.activeTab?
		$("##{window.location.pathname.substr(1)}").addClass('active')

	Waves.displayEffect()

