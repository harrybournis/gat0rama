$(document).on 'turbolinks:load', ->

	# initialize materialize javascript
	$(".button-collapse").sideNav();
	$('#slider').slider()
	$('.parallax').parallax();

	# set the active class on the current navbar tab
	cache3 = window.location.pathname
	index2 = cache3.length
	for i in [1...index2]
		if cache3.charAt(i) == "/"
			index2 = i - 1
			break
	search = cache3.substr(1, index2)
	$("##{search}").addClass('active')

	Waves.displayEffect()

	$('#calendar').clndr({
	    events: [
		    {
		        date: "2016-9-20"
		    }
		],
		clickEvents:
			click: (target) ->
				console.log target
	})

	# options = [ {
	#   selector: '.post-item'
	#   offset: 200
	#   callback: (el) ->
	#   	Materialize.fadeInImage $(el)

	# } ]
	# Materialize.scrollFire options
