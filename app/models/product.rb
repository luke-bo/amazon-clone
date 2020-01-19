class Product < ApplicationRecord

# The title must be present
# The title must be unique (case insensitive)
# The price must be a number that is more than 0
# The description must be present
# The description must have at least 10 characters

validates :title, presence: true, uniqueness: {case_sensitive: false}
validates :price, numericality: {greater_than: 0}
validates :description, presence: true, length: {minimum: 10}

before_validation :default_price
before_validation :capitalize_title

def self.search(str)
  Product.where(['title ILIKE ?', "%#{str}%"])
         .or(Product.where(['description ILIKE ?', "%#{str}%"])).distinct
end

# the search method successfully returns products that contain the string. I haven't been able to order by results with a title match before the description match yet. 

private

def default_price
  self.price = 1
end

def capitalize_title
  self.title.capitalize!
end



end
