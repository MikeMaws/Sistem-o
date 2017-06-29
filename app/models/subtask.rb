class Subtask < ApplicationRecord
  has_many :puclets,:dependent => :destroy
  belongs_to :task
  accepts_nested_attributes_for :puclets
end
