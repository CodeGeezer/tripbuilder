class Trip < ActiveRecord::Base

#validates :name, :description, :region,  presence: true
#validates :name, length: { minimum: 10, message: "Name too short"} 
#validates :description, length: { minimum: 10, message: "Description"} 

belongs_to :user

has_many :tripcomponents
has_many :components, through: :trip_components


def self.search(query)
where('name LIKE :query', query: "%#{query}%")
end


end
