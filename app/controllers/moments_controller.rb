class MomentsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @moments = Moment.all
  end

  def show
    moment_id = params[:id]
    @moment = Moment.find(moment_id)
  end

  def new
    @moment = Moment.new
  end

  def edit
    moment_id = params[:id]
    @moment = Moment.find(moment_id)
  end

  def create
    @moment = current_user.moments.new(params[:moment])

    respond_to do |format|
      if @moment.save
        format.html { redirect_to @moment, notice: "You're ready to share a moment."}
        format.json { render :show, status: :created, location: @moment}
      else
        format.html { render :new}
        format.json { render json: @moment.error, status: :unprocessable_entity}
      end
    end
  end

  def update

  end

  def destroy
    @moment.destroy
    redirect_to user_path(@user)
  end

private
  def find_moment
    @moment = @user.moments.find(params[:id])
  end

  def moment_owner
    unless current_user.id == @moment.user_id
    end
  end
end
