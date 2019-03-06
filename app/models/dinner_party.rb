class DinnerParty < ApplicationRecord
    has_many :dinner_guests
    belongs_to :user
    has_many :user_reviews, through: :dinner_guests

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
