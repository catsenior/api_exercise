namespace :dev do
  task :fetch_city => :environment do
    puts "Fetch city data..."
    response = RestClient.get "https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-C0032-001", params: {  Authorization: WEATHERAPI_CONFIG["api_key"] }
    data = JSON.parse(response.body)

    data["records"]["location"].each do |c|
      existing_city = City.find_by_city( c["locationName"] )
      if existing_city.nil?
        City.create!( city: c["locationName"] )
      end
    end

    puts "Total: #{City.count} cities"
  end
end