module Gemgem::Cell
  class Layout < Trailblazer::Cell
    def user_signed_in?
      return false unless options[:context][:controller].current_devise_user != nil
      true
    end

    def current_user
      options[:context][:controller].current_devise_user
    end
  end
end