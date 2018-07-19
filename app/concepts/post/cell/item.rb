module Post::Cell
  class Item < Trailblazer::Cell
    def content
      link_to model.content, posts_path() unless model == nil
    end

    def edit
    	 #link_to "Edit", edit_post_path()
    end
  end
end
