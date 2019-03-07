class DinnerParty < ApplicationRecord
    has_many :dinner_guests, dependent: :destroy
    belongs_to :user
    has_many :user_reviews, through: :dinner_guests
    :dependent 

   LOCATION_LIST = ["Buckhead", "Downtown", "East Atlanta", "Inman Park", "Little Five Points", "Midtown", "Virginia-Highland", "West Midtown"]
   CUISINE_LIST = ["Asian Fusion", "Cajun", "Chef's Choice", "French", "Indian", "Mediterranean", "Mexican", "Southern"]

    include ActionView::Helpers::TagHelper

    def print_long_date
        #Return a formated date string in our current time zone
        # HH:MM pm Day Month Date, YYYY
        self.date.in_time_zone(Time.now.zone).strftime("%l:%M %P, %A, %B %e, %Y")
    end
    def print_short_date
        self.date.in_time_zone(Time.now.zone).strftime("%B, %d, %Y @ %l:%M %P")
    end
end
