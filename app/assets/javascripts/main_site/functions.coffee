@initialize_calendar = ->
	$.ajax
		url: "/events"
		dataType: "json"
		error: (jqXHR, textStatus, errorThrown) ->
			document.getElementById('calendar').innerHTML = "Calendar Failed to load"
		success: (data, textStatus, jqXHR) ->
			init data


init = (events) ->
	$calendar = $('#calendar')
	$window = $(window)

	$calendar.clndr
		events: events
		doneRendering: () ->
			$controlButtons = $('#calendar .clndr-control-button')
			$controlButtons.find('.clndr-previous-button')[0].innerHTML = "‹"
			$controlButtons.find('.clndr-next-button')[0].innerHTML = "›"
			for ev in this.options.events
				$("#calendar .calendar-day-#{ev.date}").tooltip({html: true, position: 'bottom', tooltip: "<p class='tooltip-custom'>#{ev.content}</p>", delay: 100})

	$calendar.pushpin({ top: $calendar.offset().top - 50 }) if $window.width() >= 992

	$window.resize () ->
		$calendar.pushpin 'remove'
		$calendar.pushpin({ top: $calendar.offset().top - 50 }) if $window.width() >= 992
