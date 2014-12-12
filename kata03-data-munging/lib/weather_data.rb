require_relative '../../../kata/kata03-data-munging/lib/data_parser'
require_relative '../../../kata/kata03-data-munging/lib/min_pair_finder'

class WeatherData
  def self.get_day_with_min_temp_range
    weather_data = DataParser.parse_weather_data

    data_map = weather_data.inject({}) { |result, entity|
      result[entity[0]] = [entity[1], entity[2]]
      result
    }
    MinPairFinder.find_min_range(data_map)
  end
end