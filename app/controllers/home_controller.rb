class HomeController < ApplicationController

	def index
		if devise_user_signed_in?
			redirect_to new_post_path
		else
			redirect_to devise_user_session_path
		end
	end
end
