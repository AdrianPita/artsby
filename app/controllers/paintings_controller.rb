class PaintingsController < ApplicationController
  
  def index
  	@paintings = Painting.all
  end

  def new
  	@painting = Painting.new
  end

  def show
  	@painting = Painting.find(params[:id])
  end

  def create
  	@painting = Painting.new(painting_params)

  	if @painting.save
  		redirect_to @painting, notice: "You have upload #{@painting.name} succesfully"
  	else
  		render "new"
  	end
  end

  def destroy
  	@painting = Painting.find(params[:id])

  	@painting.destroy
  	redirect_to painting_path
  end

  private

  def painting_params
  	params.permit(:name, :description, :picture)
  end
end
