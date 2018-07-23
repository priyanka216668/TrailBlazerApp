class Home::Show < Trailblazer::Operation
  step :display

  def display(options, **)
    options["model"] =  options["params"]["current_user"].posts
  end
end