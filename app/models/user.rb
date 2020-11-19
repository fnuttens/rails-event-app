class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true

    has_many :user_to_events
    has_many :events, through: :user_to_events

    after_create :send_greetings

    def send_greetings
        UserMailer.welcome_email(self).deliver_now
    end
end
