module Post::Cell
  class Edit < New
    def back
      link_to "Back", post_path(model.id)
    end
  end
end