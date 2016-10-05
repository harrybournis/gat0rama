@initialize_calendar = ->
	$calendar = $('#calendar')
	$window = $(window)

	$calendar.pushpin({ top: $calendar.offset().top - 50 }) if $window.width() >= 992

	$window.resize () ->
		$calendar.pushpin 'remove'
		$calendar.pushpin({ top: $calendar.offset().top - 50 }) if $window.width() >= 992

	$calendar.clndr
		events: [
			{
				date: "2016-10-03"
				title: "MAIMOUDES"
			}
			{
				date: "2016-10-20"
				title: "MAIMOUDES"
			}
		]
		doneRendering: () ->
			$controlButtons = $('#calendar .clndr-control-button')
			$controlButtons.find('.clndr-previous-button')[0].innerHTML = "‹"
			$controlButtons.find('.clndr-next-button')[0].innerHTML = "›"
			for ev in this.options.events
				$("#calendar .calendar-day-#{ev.date}").tooltip({html: true, position: 'bottom', tooltip: '<p class="tooltip-custom">agouroarxidi</p>', delay: 100})
