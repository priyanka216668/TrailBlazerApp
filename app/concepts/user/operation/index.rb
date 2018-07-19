class User::Index < Trailblazer::Operation
	step :display

	def display(options, *)
		options["model"] = User.all
		
	end
end