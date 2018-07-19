module User::Cell
  class Item < Trailblazer::Cell
    def name
      link_to model.name, model unless model == nil
    end

    def post_count
    	link_to model.posts.count, posts_path(model.id)
    end
    def create_post
    	#link_to "Create Post", new_user_post_path(model.id)
    end
  end
end