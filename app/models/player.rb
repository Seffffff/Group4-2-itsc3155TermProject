class Player < ApplicationRecord
    validates :name, presence: true
    validates :teacher, presence: true
    validates :grade, presence: true, length: { maximum: 2 }
end
