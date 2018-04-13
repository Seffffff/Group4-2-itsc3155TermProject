class Roster < ApplicationRecord
     has_many :players
     accepts_nested_attributes_for :players, allow_destroy: true
     validates :rosterName, presence: true
end
