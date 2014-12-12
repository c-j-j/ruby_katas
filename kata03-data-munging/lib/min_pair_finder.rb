class MinPairFinder
  public
  def self.find_min_range(data_map)
    result = -1
    min_range = calculate_range(data_map.values[0])
    data_map.each { |key, value|
      range = calculate_range(value)
      if range<min_range
        min_range = range
        result = key
      end
    }
    result
  end

  private
  def self.calculate_range(pair)
    (pair[0] - pair[1]).abs
  end
end