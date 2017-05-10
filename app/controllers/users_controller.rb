class UsersController < ApplicationController

  def profile
    @user = User.find(session[:user_id]) unless session[:user_id] == ""
    redirect_to new_user_session_path, notice: "You're not logged in" unless @user
    @moments = @user.moments
  end
end
