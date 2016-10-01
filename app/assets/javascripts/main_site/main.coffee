$(document).on 'turbolinks:load', ->

	# initialize materialize javascript
	$(".button-collapse").sideNav()
	$('#slider').slider()
	$('.parallax').parallax()

	# set the active class on the current navbar tab
	cache3 = window.location.pathname
	index2 = cache3.length
	for i in [1...index2]
		if cache3.charAt(i) == "/"
			index2 = i - 1
			break
	search = cache3.substr(1, index2)
	$("##{search}").addClass('active')

	# activate the waves effect on buttons
	Waves.displayEffect()

	# initialize calendar in news
	if search == 'news'
		$calendar = $('#calendar')
		$window = $(window)

		$calendar.pushpin({ top: $calendar.offset().top - 50 }) if $window.width() > 600

		$window.resize () ->
			$calendar.pushpin 'remove'
			$calendar.pushpin({ top: $calendar.offset().top - 50 }) if $window.width() > 600

		$calendar.clndr({
		    events: [
			    {
			        date: "2016-9-20",
			        title: 'whatever'
			    }
			],
			clickEvents:
				click: (target) ->
					event = target.events[0].title if target.events[0]
					console.log "#{target.date._d} - #{event}"
		})
