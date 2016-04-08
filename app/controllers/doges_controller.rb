class DogesController < ApplicationController

  def index
    render :index  
  end

  def new 
    @user = User.find(session[:user_id])
    @doge = Doge.new
  end

  def create
    @doge = Doge.create(doge_params)
    redirect_to user_doge_path(current_user, @doge.id)
  end

  def show 
    @user = User.find(session[:user_id])
    @doge = Doge.find(params[:id])
  end

  def edit
    @doge = Doge.find(params[:id])
  end

  def update 
    @doge = Doge.find(params[:id])
    @doge.update_attributes(doge_params)
    # @doge.pictureURL.push=  
    @doge.save
    redirect_to user_doge_path(current_user, @doge.id)
  end

  def destroy 
    @doge = Doge.find(params[:id])
    @doge.destroy
    redirect_to users_path
  end
  

  private 
    def doge_params
      params.require(:doge)
        .permit(:dogeName,
                :age,
                :pictureURL,
                :detail,
                :user_id)
    end


end
