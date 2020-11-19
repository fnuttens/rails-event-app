require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "Test the validity of the Event model" do
    it "is valid with valid attributes" do
      event = Event.new(name: "My event", address: "addr")
      expect(event).to be_valid
    end
    it "is not valid without a name" do
      event = Event.new(address: "addr")
      expect(event).not_to be_valid
    end
  end
end
