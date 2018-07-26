class Post::Index < Trailblazer::Operation
  step :display

  def display(options, model, **)
    if options["params"]["user_id"]!= nil
      user_id = options["params"]["user_id"].to_i
      options["model"] = User.find(user_id).posts
      options["current_user"] = options["params"]["current_user"]
    end
  end
end