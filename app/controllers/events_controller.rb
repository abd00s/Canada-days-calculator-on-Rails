class EventsController < ApplicationController
	def welcome		
	end

	def index
		@events = Event.all		
	end

	def new
		@event = Event.new
	end

	def create
		# binding.pry
		@event = Event.new(event_params)
		if @event.save
			redirect_to events_path
		else
			render :new
		end
	end

	def show
		@event = Event.find(params[:id])		
	end

	private
	def event_params
		params.require(:event).permit(:date_from, :date_to, :location, :description)
	end
end
