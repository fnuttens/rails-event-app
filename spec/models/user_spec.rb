require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Test the validity of the User model" do
    it "is valid with valid attributes" do
      user = User.new(first_name: "Flo", last_name: "Rent")
      expect(user).to be_valid
    end
    it "is not valid without a first name" do
      user = User.new(last_name: "Rent")
      expect(user).not_to be_valid
    end
  end
end
