class EventsController < ApplicationController
	def welcome		
	end

	def index
		@events = Event.all		
	end

	def new
		@event = Event.new
	end
end
