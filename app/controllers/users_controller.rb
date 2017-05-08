class UsersController < ApplicationController


  def show

  end

  def new

  end

  def edit

  end

  def create

  end

  def update
    @user = User.find(params[:id])
      if @user.update_attributes(secure_params)
        redirect_to user_path, :notice => 'no problems'
      else
        redirect_to user_path, :notice => 'something went wrong'
      end
  end

  def destroy

  end

end
