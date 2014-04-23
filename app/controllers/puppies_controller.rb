class PuppiesController < ApplicationController

  def show
    @puppy = Puppy.find(params[:id])

  end

  def update

    @puppy = Puppy.find(params[:id])

    if @puppy.update(puppy_params)
      redirect_to(puppy_path)
    else
      render 'edit'
    end
  end
 
  private
  def puppy_params
    params.require(:puppy).permit(:name, :img_url)
  end

end