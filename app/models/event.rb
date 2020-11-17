class Event < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true

    has_many :user_to_events
    has_many :users, through: :user_to_events
end
