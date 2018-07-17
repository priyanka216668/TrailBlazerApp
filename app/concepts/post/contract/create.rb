module Post::Contract
  class Create < Reform::Form
    property :content
    validates :name, presence: true
  end
end