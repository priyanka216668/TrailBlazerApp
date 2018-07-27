class Post::Delete < Trailblazer::Operation
	step Model(Post, :find_by)
	step :destroy

	def destroy(options, model:, **)
		model.destroy
	end
end