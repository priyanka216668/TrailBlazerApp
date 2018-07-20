module Post::Cell
  class Edit < New
    def back
      link_to "Back", home_path
    end
  end
end