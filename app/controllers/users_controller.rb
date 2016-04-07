class UsersController < ApplicationController

  def index
    render :index
  end

  def new 
    @user = User.new # initate new user
  end

  def create # creating a new user 
    @user = User.create(user_params)
    login(@user)
    redirect_to "/users/#{@user.id}" #show method to user profile
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy 
    redirect_to users_path #back to root
  end

  private 
  def user_params
    params.require(:user)
      .permit(:username,
              :email,
              :password,
              :password_confirmation,
              :profilePic,
              :location,
              :dogeCount)
  end

end


# create_table "users", force: :cascade do |t|
#     t.string   "username"
#     t.string   "password"
#     t.string   "email"
#     t.string   "profilePic"
#     t.string   "location"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end






