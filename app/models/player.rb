class Player < ApplicationRecord
  default_scope { order('rank IS NULL, rank ASC') }
  
  belongs_to :roster
  validates :name, presence: true
  validates :grade, presence: true
  validates :teacher, presence: true
end
