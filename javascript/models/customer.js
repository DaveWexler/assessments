class Customer {
  constructor(name){
    this.name = name
    store.customers.push(this)
  }

  add_review(text, restaurant){
    var cust = this
    var rev = new Review(text, restaurant, cust)
  }

  restaurants() {
    var revs = this.reviews()
    var rests = []
    revs.forEach((review) => {
      if (rests.includes(review.restaurant)){
          return
        } else {
          rests.push(review.restaurant)
        }
      }
    )
    return rests
  }

  reviews(){
    var filter_reviews = (review) => {
      return review.customer === this
    }
    var revs = store.reviews.filter(filter_reviews)
    return revs
  }

}
