require "reform/form/dry"

module Post::Contract
  class Create < Reform::Form
    include Dry
    property :content
    validation do
      filled(:content)
     end
  end
end