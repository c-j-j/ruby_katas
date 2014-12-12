require_relative '../../../kata/kata03-data-munging/lib/weather_data'
require 'rspec'

describe 'weather_data.rb' do

  it 'should return day with minumum temperature range' do
    day = WeatherData.get_day_with_min_temp_range
    expected_day_with_min_range = 14
    day.should eq expected_day_with_min_range
  end
end