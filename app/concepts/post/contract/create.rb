module Post::Contract
  class Create < Reform::Form
    property :content
    validates :content, presence: true
  end
end