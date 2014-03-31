class PaintingsController < ApplicationController
 before_action :correct_user,   only: :destroy
  
  def index
  	@paintings = Painting.all
  end

  def new
  	@painting = Painting.new
  end

  def show
  	@painting = Painting.find(params[:id])
    #@painting.user = current_user
  end

  def create
  	@painting = Painting.new(painting_params)
    @painting.user = current_user

  	if @painting.save
  		redirect_to @painting, notice: "You have upload #{@painting.name} succesfully"
  	else
  		render "new"
  	end
  end

  def destroy
  	#@painting = Painting.find(params[:id])

  	@painting.destroy
  	redirect_to painting_path
  end

  private

  def painting_params
  	params.require(:painting).permit(:name, :description, :picture, :filename, :tempfile, :original_filename)
  end
  def correct_user
    @painting = current_user.paintings.find_by(id: params[:id])
    redirect_to painting_url if @painting.nil?
  end
end
