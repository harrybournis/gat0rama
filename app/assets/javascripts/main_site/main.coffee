total = 0;
noOfTimes = 0;
$(document).on 'turbolinks:load', ->
	$(".button-collapse").sideNav();
	$('#slider').slider()
	$('.parallax').parallax();

	# set active tab
	# console.log window
	# if !window.activeTab?
	# 	$("##{window.location.pathname.substr(1)}").addClass('active')

	Waves.displayEffect()

	cache3 = window.location.pathname
	index2 = cache3.length
	for i in [1...index2]
		if cache3.charAt(i) == "/"
			index2 = i - 1
			break
	search = cache3.substr(1, index2)
	$("##{search}").addClass('active')

