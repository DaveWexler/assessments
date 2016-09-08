const store = {customers: [], restaurants: [], reviews: []}

var bob = new Customer("Bob"),
    dan = new Customer("Dan"),
    fred = new Customer("Fred")

var ss = new Restaurant("Shake Shack"),
    ch = new Restaurant("Chilis"),
    dt = new Restaurant("Dos Toros")

var rev1 = new Review("It's yummy", ss, bob),
    rev2 = new Review("It's gross", ss, fred),
    rev3 = new Review("It's okay", dt, dan),
    rev4 = new Review("It's the best", ch, dan)
    rev5 = new Review("I liked it better this time", ss, fred)
