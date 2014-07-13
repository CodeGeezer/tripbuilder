class TripsController < ApplicationController
#skip_before_filter :authenticate_user!
before_action :authenticate_user!, only: [:edit, :new, :create]
before_action :load_trip, only: [:edit, :update]
before_action :search_results, only: [:show]
#skip_before_action :authenticate_user!, only: :index
attr_accessor :trip

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
  if Trip.create(trip_params) then redirect_to '/trips/show'
  else render 'new'
  end  
end

def edit   
end

def update
    if @trip.update(trip_params) then redirect_to '/trips/show'
    else
      render 'edit'
    end
end

def delete
end

private

def trip_params
  params.require(:trip).permit(:name, :description, :region, :start, :theme, :end)
end


def search_results
   @trip = Trip.search(params[:p])
end



def load_trip
	 @trip = Trip.find(params[:id])
end



end
