class User < ApplicationRecord

    has_many :dinner_guests
    has_many :dinner_parties, through: :dinner_guests
    has_many :hosted_parties, class_name: "DinnerParty"
    has_many :user_reviews, through: :dinner_guests 

    validates :name, presence: true
    validates :password, length: { minimum: 6}
    

end
