class UsersController < ApplicationController


  def show
    user_id = params[:id]
    @user = User.find(user_id)

  end

  def new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

end
