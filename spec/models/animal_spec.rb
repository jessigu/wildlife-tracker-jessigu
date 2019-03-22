require 'rails_helper'

RSpec.describe Animal, type: :model do
    let(:animal) { Animal.new }
  it "should validate common name" do
      expect(animal.valid?).to be false
      expect(animal.errors.messages[:name].nil?).to be false
  end
  it "should validate common name is unique" do
      animal_two = Animal.new(:name=>"animal")
      expect { animal_two.save! }.to raise_error (ActiveRecord::RecordInvalid)
  end
  it "should validate latin name" do
      expect(animal.valid?).to be false
      expect(animal.errors.messages[:latin_name].nil?).to be false
  end
  it "should validate kingdom name" do
      expect(animal.valid?).to be false
      expect(animal.errors.messages[:kingdom].nil?).to be false
  end
end
