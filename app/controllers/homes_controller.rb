class HomesController < ApplicationController
	
	def home
		if user_signed_in?
			@user = current_user
			@followers = @user.followers
			render :home_user
		else
			render :home
		end
	end
	
  def help
  end

  def about
  end

end
