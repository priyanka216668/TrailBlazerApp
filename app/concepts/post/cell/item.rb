module Post::Cell
  class Item < Trailblazer::Cell
    def title
      link_to model.title, post_path(model.id) unless model == nil
    end
    def user_signed_in?
      return false unless options[:context][:controller].current_devise_user != nil
      true
    end
  end
end
