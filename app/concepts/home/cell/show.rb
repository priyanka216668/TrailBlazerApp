module Home::Cell
  class Show < Trailblazer::Cell
   
    def show_posts
    #	link_to "show posts", posts_path(model.id)
    end

    def log_out
    	link_to "Logout", destroy_devise_user_session_path, :method  => 'delete'
    end

    def create_post
      link_to "Create Post", new_post_path
    end

    def edit_profile
      link_to "Edit Profile"
    end
  end
end