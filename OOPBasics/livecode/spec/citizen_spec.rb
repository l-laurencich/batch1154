require_relative "../citizen.rb"

describe Citizen do
  describe "#can_vote?" do
    it "should return false if the age of the citizen is under 18" do
      citizen = Citizen.new("", "", 15)
      expect(citizen.can_vote?).to eq(false)
    end

    it "should return true if the age of the citizen is above 17" do
      citizen = Citizen.new("", "", 33)
      expect(citizen.can_vote?).to eq(true)
    end
  end

  describe "#full_name" do
    it "should return the full name capitalized" do
      citizen = Citizen.new("eLviS","preslEy", 87)
      expect(citizen.full_name).to eq("Elvis Presley")
    end
  end
end