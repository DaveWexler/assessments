class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new

  # create
  def create
    @user = User.create(params[user])
    redirect_to user_path(@user)
  end
  # /users with a post request (e.g. on form submission to create new user)

  # index
  def index
    @users = User.all
  end
  # /users (GET request)

  # show
  def show
    @user = User.find_by(params[:id])
  end
  # /users/:id

  # edit
  def edit
    @user = User.find_by(params[:id])
  end
  # /users/:id/edit

  # update
  def update
    @user = User.find_by(params[:id])
    @user.update(params[user])
    redirect_to user_path(@user)
  end
  # /users/:id (with a PATCH request)

  # destroy
  def destroy
    @user = User.find_by(params[:id])
    @user.destroy
    redirect_to action: "index"
  end
  # /users/:id (with DELETE request)
end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
