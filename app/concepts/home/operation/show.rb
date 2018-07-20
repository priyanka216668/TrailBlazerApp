class Home::Show < Trailblazer::Operation
  step :display

  def display(options, **)
    #byebug
   options["model"] =  options["params"]["current_user"].posts
   options["current_user"] =  options["params"]["current_user"]
  end
end