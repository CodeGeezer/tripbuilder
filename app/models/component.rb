class Component < ActiveRecord::Base

has_many :tripcomponents
has_many :trips, through:  :trip_components

end
