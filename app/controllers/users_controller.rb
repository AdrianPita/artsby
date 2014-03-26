class UsersController < ApplicationController
	#before_action :signed_in_user, only: [:edit, :update]
	#before_action :correct_user,   only: [:edit, :update]

  def index 
		@users = User.all
	end

	def show
    @user = User.find(params[:id])
    #@user = current_user
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

  #def signed_in_user
   # redirect_to signin_url, notice: "Please sign in." unless signed_in?
  #end

  #def correct_user
    #@user = User.find(params[:id])
    #redirect_to(root_url) unless current_user?(@user)
  #end
end
