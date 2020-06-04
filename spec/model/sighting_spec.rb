require "rails_helper"
RSpec.describe "Sighting", :type => :request do

    it "is valid with attributes" do
        sighting_test = Sighting.create latitude:113.3224, longtitude:453.5677, date:"2020-01-02T09:20:40.001Z"
      expect(sighting_test).to be_valid 
      end
    
      it "is not valid without a latitude" do
        sighting_latitude_test = Sighting.create latitude:nil, longtitude:453.5677, date:"2020-01-02T09:20:40.001Z"
      expect(sighting_latitude_test.errors[:latitude]).not_to be_empty
      end

      it "is not valid without a longtitude" do
        sighting_longtitude_test = Sighting.create latitude:113.3224, longtitude:nil, date:"2020-01-02T09:20:40.001Z"
      expect(sighting_longtitude_test.errors[:longtitude]).not_to be_empty
      end

      it "is not valid without a date" do
        sighting_date_test = Sighting.create latitude:113.3224, longtitude:453.5677, date:nil
      expect(sighting_date_test.errors[:date]).not_to be_empty
      end
end


