class MomentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :current_user, only: [:edit, :update, :destroy]

  def index
    @moments = Moment.all
  end

  def show
    if signed_in?
    moment_id = params[:id]
    @moment = Moment.find(moment_id)
    else
    @moment = Moment.find(moment_id)
    end
  end

  def new
    @moment = Moment.new
  end

  def edit
    moment_id = params[:id]
    @moment = Moment.find(moment_id)
  end

  def create
    @moment = Moment.new(moment_params)
    @user = User.find_by_id(session[:user_id])
    @moment.user = @user
    if @moment.save
    redirect_to moment_path
    else
    flash[:error] = @moment.errors.full_messages


      # if @moment.save
      #   format.html { redirect_to '/moment', notice: "You're ready to share a moment."}
      #   format.json { render :show, status: :created, location: @moment}
      # else
      #   format.html { render :new}
      #   format.json { render json: @moment.error, status: :unprocessable_entity}
      # end
    end
  end


  def update
    @moment = Moment.find(params[:id])
    if @moment.update(moment_params)
      redirect_to profile_path, alert: "Your moment has been udpated!"
    else
      render edit_moment_path, alert: "Ooops! Something went wrong, please try again"
    end
  end

  def destroy
    @moment.destroy
    redirect_to user_path(@user)
  end

private
  def moment_params
    params.require(:moment).permit( :name, :location, :date, :description)
  end

  def find_moment
    @moment = @user.moments.find(params[:id])
  end

  def moment_owner
    unless current_user.id == @moment.user_id
    end
  end
end
