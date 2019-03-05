class UserReview < ApplicationRecord
    belongs_to :dinner_guest
    
    validates :review_text, length: {maximum: 200}
    validates :rating, :inclusion => 1..5

end
