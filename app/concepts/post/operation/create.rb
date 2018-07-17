class Post::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Post, :new)
    step Contract::Build( constant: Post::Contract::Create )
  end
end