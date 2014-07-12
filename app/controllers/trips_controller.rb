class TripsController < ApplicationController
#skip_before_filter :authenticate_user!
before_action :authenticate_user!, only: [:new, :create]

def index
  @trip = Trip.all  	
end


def show
  @trip = Trip.search(params[:p])
end


def new
  @trip = Trip.new
end

def create
  if Trip.create(trip_params) then redirect_to "trips/show"
  else render 'new'
  end  
end

def update
end

def edit
end

def delete
end

def trip_params
  params.require(:trip).permit(:name, :description, :region, :start, :theme, :end)
end

end
