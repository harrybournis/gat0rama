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
			$('#slider').slider({ height: 760, indicators: true  }) # 760 to remove the extra 40px that it automatically adds, and get it to an even 800 px
		else
			$('#slider').slider()

		$('.parallax').parallax()


	# activate the waves effect on buttons
	Waves.displayEffect()
