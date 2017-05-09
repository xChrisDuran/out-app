class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def update
    @user = User.find(params[:id])
      # if @user.update_attributes(secure_params)
      #   redirect_to user_path, :notice => 'Updated account'
      # else
      #   redirect_to user_path, :notice => 'something went wrong'
  end

end

  private
    def secure_params
      params.require(:user).permit(:first_name, :last_name, :image, :about, :birthday, :city, :state)
    end
