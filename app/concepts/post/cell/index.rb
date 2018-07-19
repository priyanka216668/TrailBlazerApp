module Post::Cell
  class Index < Trailblazer::Cell
    def total
      return "No posts" if model.size == 0
    end

    def log_in
    	link_to "Log in to create new post", devise_user_session_path
    end
  end
end