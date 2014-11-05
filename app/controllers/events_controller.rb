class EventsController < ApplicationController
	def welcome		
	end

	def index
		@events = Event.all		
	end
end
