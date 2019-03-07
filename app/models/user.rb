class User < ApplicationRecord

    has_many :dinner_guests
    has_many :dinner_parties, through: :dinner_guests
    has_many :hosted_parties, class_name: "DinnerParty", dependent: :destroy
    has_many :user_reviews, through: :dinner_guests 

    validates :user_name, :password, :name, presence: true
    validates :user_name, length: {minimum: 4}
    validates :user_name, uniqueness: true
    validates :password, length: {minimum: 6, maximum: 16}
    validates :name, length: { minimum: 3}
    validates :user_name, format: {with: /\A[a-z0-9]+\z/}

  
    has_secure_password
    def future_parties
        self.dinner_parties.select {|p| p.date.future? }
    end

    def past_parties
        self.dinner_parties.select {|p| p.date.past? }
    end

    def future_hosted_parties
        self.hosted_parties.select {|p| p.date.future?}
    end


    def print_all_reviews
    #This method can receive an optional block of text 
    #The block will be added inside of the <ul> tag
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
         if reviews.count == 0
             html_string = "<ul><li>You haven't made any reviews yet</li>"
         end
         if block_given?
            html_string << yield
         end
         html_string << "</ul>"
         html_string.html_safe
    end

    def print_all_parties
        #Return an html string about with all the parties a user is attending
        #This method can receive an optional block of text 
        #The block will be added inside of the <ul> tag
        parties = self.dinner_parties
        html_string = "<ul>"
        
        parties.each do |party|
            party_string = "#{party.cuisine}, Hosted by: #{party.user.name}, at: #{party.location}"
            html_string << "<li>"
            html_string << party_string
            html_string << "</li>"
        end
        html_string << "</ul>"
        if parties.count == 0
            html_string = "<ul><li>You haven't selected any parties to attend yet</li>"
        end
        if block_given?
            html_string << yield
        end
        html_string << "</ul>"
        html_string.html_safe
    end

end
