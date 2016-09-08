class Review {

  constructor(text, restaurant, customer) {
    this.text = text
    this.restaurant = restaurant
    this.customer = customer
    store.reviews.push(this)
  }

  customer(){
    return this.customer
  }

  restaurant() {
    return this.restaurant
  }
}
