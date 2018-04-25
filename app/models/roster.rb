class Roster < ApplicationRecord
     has_many :players, dependent: :destroy
     accepts_nested_attributes_for :players
     validates :rosterName, presence: true
end
