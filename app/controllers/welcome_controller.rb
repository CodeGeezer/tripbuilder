class WelcomeController < ApplicationController

def index
	 @trip = Trip.all
     @component = Component.all
end


end
