class PuppiesController < ApplicationController

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.new(puppy_params)

    if puppy.save
      redirect_to root_path
    else
      render :new
    end

  end

  def destroy
    @puppy = Puppy.find_by(id: params[:id])
    @puppy.delete
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :img_url)
  end

end

