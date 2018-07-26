module Post::Cell
  class Item < Trailblazer::Cell
    def title
      model.title unless model == nil
    end
    def content
      model.content unless model == nil
    end
    def user_signed_in?
      return false unless options[:context][:controller].current_devise_user != nil
      true
    end
  end
end
