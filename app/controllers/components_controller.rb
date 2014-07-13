class ComponentsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create]

def index
  @component = Component.all  	
end


def show
  @component = Component.search(params[:p])
end


def new
  @component = Component.new
end

def create
  if Component.create(comp_params) then redirect_to components_path
  else render 'components/new'
  end  
end

def comp_params
  params.require(:component).permit(:name, :description, :start, :end, :lat, :lon)
end

end
