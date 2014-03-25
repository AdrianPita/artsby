class UsersController < ApplicationController
	
	def index 
		@users = User.all
	end

	def show
    @user = User.find(params[:id])
    @user = current_user
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])

    if @user.update edit_params
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
  def edit_params
  	params.require(:user).permit(:name, :email, :password)
  end
end
