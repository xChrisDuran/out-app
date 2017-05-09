class MomentsController < ApplicationController

  def  index
    @moments = Moment.all

  end

  def show
    moment_id = params[:id]
    @moment = Moment.find(moment_id)
  end

  def new
    @moment = current_user.moments.build
    
  end

  def create
    @moment = current_user.moments.build(moment_params)

    respond_to do |format|
      if @moment.save
        format.html { redirect_to @moment, notice: "You're ready to share a moment."}
        format.json { render :show, status: :created, location: @moment}
      else
        format.html { render :new}
        format.json { render json: @moment.error, status: :unprocessable_entity}
      end
  end

  def destroy
    @moment = Moment.find(params[:id])
    @moment.destroy
    redirect_to user_path(@user)


  end


  private
    def post_params
      params.require(:moment).permit(:name, :picture, :description)
    end
  end
end
