require "rails_helper"
RSpec.describe "Animal", :type => :request do

  it "is valid with attributes" do
    animal_test = Animal.create common_name:"Coyote", latin_name:"Canis latrans Say", kingdom:"Animal"
  expect(animal_test).to be_valid 
  end

  it "is not valid without a common name" do
    animal_common_name_test = Animal.create common_name:nil, latin_name:"Bos gaurus", kingdom:"Animal"
  expect(animal_common_name_test.errors[:common_name]).not_to be_empty
  end

  it "is not valid without a latin name" do
    animal_latin_name_test = Animal.create common_name:"Cheeta", latin_name:nil, kingdom:"Animal"
  expect(animal_latin_name_test.errors[:latin_name]).not_to be_empty
  end

  it "is not valid when common name and latin name match exactly" do
    animal_same_name_test = Animal.create common_name:"Cheetah", latin_name:"Cheetah", kingdom:"Animal"
  expect(animal_same_name_test.errors[:common_name]).to_not contain_exactly([:latin_name])
  end


end