require 'rails_helper'

RSpec.describe Restaurants, :type => :model do
  it "checking the Restaurants object" do
    rest = Restaurants.new
    expect(rest).to be_an_instance_of Restaurants
  end
  it "checking the restarynt response" do
    res = Restaurants.getRestaurents
    expect(res).not_to be_nil
    res.each do |restaurent|
      expect(restaurent).to be_an_instance_of Hash
      expect(restaurent['address']).not_to be_nil
      expect(restaurent['name']).not_to be_nil
      expect(restaurent['review_count']).not_to be_nil
      expect(restaurent['address']['city']).not_to be_nil
    end
  end
end