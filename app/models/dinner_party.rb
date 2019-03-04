class DinnerParty < ApplicationRecord
    has_many :dinner_guests
    belongs_to :user
    has_many :user_reviews, through: :dinner_guests
end
