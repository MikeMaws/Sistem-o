class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :subtask
  has_and_belongs_to_many :likes
end
