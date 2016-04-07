class DogesController < ApplicationController

  def index
    render :index  
  end

  def new 
    @doge = Doge.new
  end

  def create
    @doge = Doge.create(doge_params)
    redirect_to "/users/#{current_user.id}/doges/#{@doge.id}"
  end

  def show 
    @doge = Doge.find(params[:id])
  end

  def edit
    @doge = Doge.find(params[:id])
  end

  def update 
    @doge = Doge.find(params[:id])
    @doge.update_attributes(doge_params)  
    @doge.save
    redirect_to doge_path(@doge)
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
                :detail,
                :user_id)
    end


end
