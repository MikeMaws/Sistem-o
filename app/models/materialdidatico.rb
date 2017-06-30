class Materialdidatico < ApplicationRecord
  belongs_to :task
  validates :descricao, presence: true
end
