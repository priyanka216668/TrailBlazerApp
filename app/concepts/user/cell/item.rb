module User::Cell
  class Item < Trailblazer::Cell
    def name
      link_to model.name, model unless model == nil
    end

    def post_count
    	link_to model.posts.count, posts_path(model.id)
    end

    def log_in
      link_to "Login", devise_user_session_path
    end
  end
end