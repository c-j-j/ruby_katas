require_relative '../../../kata/kata03-data-munging/lib/weather_data'
require 'rspec'

xdescribe 'weather_data.rb' do

  it 'should return day with minumum temperature range' do
    day = WeatherData.get_day_with_minimum_temp_range
    day.should eq 3
  end
end