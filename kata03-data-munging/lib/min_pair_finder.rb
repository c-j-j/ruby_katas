MAX_TEMPERATURE_COLUMN = 2
MIN_TEMPERATURE_COLUMN = 1

class MinPairFinder
  public
  def self.find_min(data)
    result = -1
    first_row = data[0]
    min_range = calculate_range(first_row)
    data.each { |value|
      range = calculate_range(value)
      if range<min_range
        min_range = range
        result = value[0]
      end
    }
    result
  end

  private
  def self.calculate_range(first_row)
    (first_row[MAX_TEMPERATURE_COLUMN] - first_row[MIN_TEMPERATURE_COLUMN]).abs
  end
end