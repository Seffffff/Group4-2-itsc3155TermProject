class Player < ApplicationRecord
  belongs_to :roster
  validates :name, presence: true
  validates :teacher, presence: true
  validates :grade, presence: true
end
