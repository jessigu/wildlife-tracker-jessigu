require 'rails_helper'

RSpec.describe Sighting, type: :model do
  let(:sighting) { Sighting.new }
  it "should validate animal_id" do
      expect(sighting.valid?).to be false
      expect(sighting.errors.messages[:animal_id].nil?).to be false
  end
    it "should validate date of sighting" do
      expect(sighting.valid?).to be false
      expect(sighting.errors.messages[:date].nil?).to be false
  end
    it "should validate time of sighting" do
      expect(sighting.valid?).to be false
      expect(sighting.errors.messages[:time].nil?).to be false
  end
    it "should validate region of sighting" do
      expect(sighting.valid?).to be false
      expect(sighting.errors.messages[:region].nil?).to be false
  end
end
