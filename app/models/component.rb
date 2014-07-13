class Component < ActiveRecord::Base

belongs_to :trip

def self.search(query)
where('name LIKE :query', query: "%#{query}%")
end

end
