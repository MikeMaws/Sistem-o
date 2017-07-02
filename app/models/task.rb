class Task < ApplicationRecord
  has_many :subtasks, :dependent => :destroy
  has_many :materialdidaticos, :dependent => :destroy
  validates :nome, presence: true
  validates :descricao, presence: true
  validates :abertura, presence: true
  accepts_nested_attributes_for :subtasks, allow_destroy: true
end
