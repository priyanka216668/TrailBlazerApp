module User::Cell
  class Item < Trailblazer::Cell
    def first_name
      model.first_name unless model == nil
    end

    def post_count
      link_to model.posts.count, user_posts_path(model.id)
    end
  end
end