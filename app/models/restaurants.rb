class Restaurants 
  def self.getRestaurents
    data = DataFetch::Main.get_restaurents
    data = data["businesses"].sort_by{|x| x['review_count'].to_i}.reverse!
    arr = []
    data.each do |x|
      x.keep_if{|key, val| key == "name" || key == "review_count" || key == "avg_rating" || key == "latitude" ||key == "longitude"|| key == "state" ||key == "city" ||key == "zip" }
      address = {"latitude" => x['latitude'],"longitude" => x['longitude'],"city"=> x['city'],"state" => x['state'],"zip" => x['zip']}
      x.reject!{ |k| k == "latitude" || k == "longitude" || k == "city" || k == "state" || k == "zip"}
      x.store("address",address)
      arr << x
    end
    return arr
  end
end
