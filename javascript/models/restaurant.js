class Restaurant {
  constructor(name){
    this.name = name
    store.restaurants.push(this)
  }

  customers(){
    var revs = this.reviews()
    var custs = []
    revs.forEach((review) => {
      if (custs.includes(review.customer)){
          return
        } else {
          custs.push(review.customer)
        }
      }
    )
    return custs
  }

  reviews(){
    var filter_reviews = (review) => {
      return review.restaurant === this
    }
    var revs = store.reviews.filter(filter_reviews)
    return revs
  }

}
