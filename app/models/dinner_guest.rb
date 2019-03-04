class DinnerGuest < ApplicationRecord

    belongs_to :user
    belongs_to :dinner_party
    has_one :user_review
end
