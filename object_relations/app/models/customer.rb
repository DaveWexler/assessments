class Customer

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_review(text, restaurant)
    review = Review.new(text, restaurant, self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.name == name}
  end
end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
