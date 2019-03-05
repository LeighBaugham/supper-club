class User < ApplicationRecord

    has_many :dinner_guests
    has_many :dinner_parties, through: :dinner_guests
    has_many :hosted_parties, class_name: "DinnerParty"
    has_many :user_reviews, through: :dinner_guests 
    validates :user_name, :password, :name, presence: true
    validates :password, length: {minimum: 6, maximum: 16}
    validates :user_name, length: {minimum: 4}
    validates :name, length: { minimum: 3}
    validates :user_name, format: {with: /\A[a-z0-9]+\z/}


    validates :name, presence: true
    validates :password, length: { minimum: 6}
  
    has_secure_password

    def print_all_reviews
         reviews  = self.user_reviews
         html_string = "<ul>"
         reviews.each do |review|
             html_string << "<li>"
             descr = review.review_text
             html_string << descr
             rating_str = "... [" + review.rating.to_s + " out of 5]"
             html_string << rating_str
             html_string << "</li>"
         end
         html_string << "</ul>"
    
    end

end
