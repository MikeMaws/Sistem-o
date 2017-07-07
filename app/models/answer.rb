class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :subtask
  has_many :likes
end
