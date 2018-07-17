class PostsController < ApplicationController
	def new
    run Post::Create::Present
    print "created............................."
    render cell(Post::Cell::New, @form), layout: false
  end
end
