class Task < ApplicationRecord
  has_many :subtasks, :dependent => :destroy
  accepts_nested_attributes_for :subtasks, allow_destroy: true

  has_many :materialDidatico, as: :material, dependent: :destroy
  accepts_nested_attributes_for :materialDidatico, allow_destroy: true

  validates :nome, presence: true
  validates :descricao, presence: true
  validates :abertura, presence: true
end
