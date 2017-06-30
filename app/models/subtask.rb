class Subtask < ApplicationRecord
  has_many :puclets,:dependent => :destroy
  accepts_nested_attributes_for :puclets, allow_destroy: true
  belongs_to :task
  
  validates :nome, presence: true
  validates :descricao, presence: true
  validates :entrega, presence: true
end
