class Subtask < ApplicationRecord
  has_many :puclets,:dependent => :destroy
  accepts_nested_attributes_for :puclets, allow_destroy: true
  belongs_to :task

  has_many :materialDidatico, as: :material, dependent: :destroy
  accepts_nested_attributes_for :materialDidatico, allow_destroy: true

  has_many :habilidades, dependent: :destroy
  accepts_nested_attributes_for :habilidades, allow_destroy: true


  validates :nome, presence: true
  validates :descricao, presence: true
  validates :entrega, presence: true
end
