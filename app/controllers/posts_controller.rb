class PostsController < ApplicationController
  #before_action :authenticate_devise_user!
  def new
    run Post::Create::Present
    print "created............................."
    render cell(Post::Cell::New, @form), layout: false
  end

  def create
    result =  Post::Create.(params, "current_user" => current_devise_user)
    return redirect_to posts_path(current_devise_user.id)
  end
    #render cell(Post::Cell::New, @form), layout: false
  #end

  def index
    run Post::Index
    render cell(Post::Cell::Index, result["model"]), layout: false
  end

  def show
    run Post::Show
    render cell(Post::Cell::Show, result["model"]), layout: false
  end

  def edit
    run Post::Update::Present
    render cell(Post::Cell::Edit, @form), layout: false
  end

  def update
    run Post::Update do |result|
      return redirect_to posts_path(result["model"].id)
    end
    render cell(Post::Cell::Edit, @form), layout: false
  end

  def destroy
    run Post::Delete

    flash[:alert] = "Post deleted"
    redirect_to posts_path
  end
end
