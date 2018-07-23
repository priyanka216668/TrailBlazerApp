module Post::Cell

  class Show < Trailblazer::Cell
    property :content

    # def time
    #   model.created_at
    # end

    # def edit
    #   link_to "Edit", edit_post_path(model.id)
    # end

    # def delete
    #   link_to "Delete", post_path(model.id), method: :delete, data: {confirm: 'Are you sure?'}
    # end

    def back
      if options[:context][:controller].current_devise_user != nil
        link_to "Back to posts list", home_path
      else
        link_to "Back to posts list", posts_path
      end
    end
  end
end