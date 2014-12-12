require_relative '../../../kata/kata03-data-munging/lib/data_parser'
require 'rspec'

describe 'testing ability to parse weather.dat' do

  it 'should skip headers and footers in file' do
    data = DataParser.parse_weather_data
    data.length.should eq 30
  end

  it 'should parse first line' do
    data = DataParser.parse_weather_data
    first_entity = data[0]

    first_entity[0].should eq 1
    first_entity[1].should eq 88
    first_entity[2].should eq 59
  end

  it 'should parse final line' do
    data = DataParser.parse_weather_data
    last_entity = data[29]

    last_entity[0].should eq 30
    last_entity[1].should eq 90
    last_entity[2].should eq 45
  end
end

describe 'testing ability to parse football.dat' do
  it 'should parse 20 lines of data' do
    data = DataParser.parse_football_data
    data.length.should eq 20
  end
end