class UsersController < ApplicationController
 # before_action :set_user, only: [:show, :edit, :update, :destroy]
 #  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

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


    # def set_user
    #    # Use callbacks to share common setup or constraints between actions.
    #     @user = User.find(params[:id])
    # end

    # def set_s3_direct_post
    #   @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
    # end

end


