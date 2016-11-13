class EventsController < ApplicationController

	def index
		@events = Event.published

		# For demo only
		@events.each { |e| e.date = DateTime.new(DateTime.now.year, DateTime.now.month, rand(1..28)) }
		#

		render json: @events, status: :ok
	end

end
