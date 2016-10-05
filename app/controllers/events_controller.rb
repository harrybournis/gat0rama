class EventsController < ApplicationController

	def index
		@events = Event.published
		render json: @events, status: :ok
	end

end
