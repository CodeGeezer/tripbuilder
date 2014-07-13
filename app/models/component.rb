class Component < ActiveRecord::Base

has_many :trip_components
has_many :trips, through:  :trip_components


def self.search(query)
where('name LIKE :query', query: "%#{query}%")
end

end
