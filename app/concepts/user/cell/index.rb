module User::Cell
  class Index < Trailblazer::Cell
    include Kaminari::Cells
    include Kaminari::Helpers
  end
end