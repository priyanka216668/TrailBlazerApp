class Post::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    # step :model!
    step Model(Post, :new)
    step Contract::Build( constant: Post::Contract::Create )

    # def model!(options, params:, **)
    #  # user = User.find_by(id: params[:user_id])
    #   byebug
    #   options["model"] = current_user.post.build
    # end
  end

  step Nested( Present )
  step :assign_current_user
  step Contract::Validate( key: "post")
  step Contract::Persist( )
  step :notify!

  def assign_current_user(options, model, **)
    options["model"].user_id = model[:current_user].id
  end

  def notify!(options, model:, **)
    options["result.notify"] = Rails.logger.info("New  post #{model.content}.")
  end
end