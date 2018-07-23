class HomesController < ApplicationController
  before_action :authenticate_devise_user!

  def show
    result = Home::Show.("current_user" => current_devise_user)
    render cell(Home::Cell::Show, result), layout: true
    # if devise_user_signed_in?
    #   redirect_to new_post_path
    # else
    #   redirect_to devise_user_session_path
    # end
  end
end
