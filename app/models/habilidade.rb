class Habilidade < ApplicationRecord
  belongs_to :subtask, required: false
end
