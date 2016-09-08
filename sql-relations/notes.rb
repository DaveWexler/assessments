# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

Customers have many reviews
Restaurants have many reviews
Reviews belong to customer
Reviews belong to restaurant
Restaurant belongs to owner ("conceivably a restaurant can have many owners, but I'm going with one here.")
Owner has many restaurants

Customers
id | name | birth_year | hometown

Restaurants
id | name | location | owner_id

Reviews
id | text | customer_id | restaurant_id

Owners
id | name



# Eg. for our books and authors your deliverable would look like

# books
id | title | author_id

# author
id | name |

# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table
