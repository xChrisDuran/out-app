class OutController < ApplicationController
  def index
    @user = current_user
  end

  def show
    user_id = params[:id]
    @user = User.find(user_id)

    moment_id = params[:id]
    @moment = Moment.find(moment_id)
  end

  def about
    
  end
end
