class Subtask < ApplicationRecord
  has_many :puclets,:dependent => :destroy
  accepts_nested_attributes_for :puclets, allow_destroy: true
  belongs_to :task
end
