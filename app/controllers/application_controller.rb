class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  # def render_cell(cell_constant, model, status: 200, options: {})
  #   render(
  #     html: cell(
  #       cell_constant,
  #       model,
  #       { context: { current_user: current_user}.merge(options)
  #     }),
  #     status:  status
  #   )
  #  end
  def after_sign_in_path_for(resource)
    new_post_path
  end
end
