$(document).on 'turbolinks:load', ->

	# initialize materialize javascript
	$(".button-collapse").sideNav
		menuWidth: 500

	# set the active class on the current navbar tab
	cache3 = window.location.pathname
	index2 = cache3.length
	for i in [1...index2]
		if cache3.charAt(i) == "/"
			index2 = i - 1
			break
	search = cache3.substr(1, index2)
	$("##{search}").addClass('active')

	unless search
		if $(window).width() <= 992
			$('#slider').slider({ height: 800, indicators: true  })
		else
			$('#slider').slider()

		$('.parallax').parallax()


	# activate the waves effect on buttons
	Waves.displayEffect()
