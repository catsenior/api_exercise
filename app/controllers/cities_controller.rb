class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def update_temp
    city = City.find(params[:id])
    response = RestClient.get"https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-C0032-001", params: {Authorization: WEATHERAPI_CONFIG["api_key"],
      locationName: "#{city.city}",
      elementName: "MinT"}

    data = JSON.parse(response.body)

    city.update( current_temp: data["records"]["location"][0]["weatherElement"][0]["time"][0]["parameter"]["parameterName"] )
    redirect_to cities_path
  end
end
