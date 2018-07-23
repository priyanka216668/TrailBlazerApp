module Post::Cell
  class Item < Trailblazer::Cell
    def title
      link_to model.title, post_path(model.id) unless model == nil
    end

    def edit
      if options[:context][:controller].current_devise_user != nil
        link_to "Edit", edit_post_path(model.id)
      end
    end
  end
end
