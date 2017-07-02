class MaterialDidatico < ApplicationRecord
  belongs_to :material, polymorphic: true, required: false
end
