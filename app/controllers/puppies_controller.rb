class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

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

