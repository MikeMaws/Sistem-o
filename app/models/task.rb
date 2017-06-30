class Task < ApplicationRecord
  has_many :subtasks,:dependent => :destroy
  has_many :materialdidaticos, :dependent => :destroy
  
  validates :nome, presence: true
  validates :descricao, presence: true
  validates :abertura, presence: true
end
