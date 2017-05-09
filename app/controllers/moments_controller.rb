class MomentsController < ApplicationController

  def  index
    @moments = Moment.all

  end

  def show
    moment_id = params[:id]
    @moment = Moment.find(moment_id)
  end

  def new
    @moment = Moment.new

  end

  def create
    @moment = Moment.new(moment_params)

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
    def moment_params
      params.require(:moment).permit(:name, :description)
    end
  end
end
