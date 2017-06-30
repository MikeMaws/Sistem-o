class Task < ApplicationRecord
  has_many :subtasks,:dependent => :destroy
  has_many :materialdidaticos, :dependent => :destroy
end
