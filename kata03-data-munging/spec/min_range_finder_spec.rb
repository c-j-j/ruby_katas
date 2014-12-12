require_relative '../../../kata/kata03-data-munging/lib/min_pair_finder'
require 'rspec'

describe 'min_pair_finder.rb' do

  it 'should return int with a pair that has minimum range' do
    data = {0 => [0, 10], 1 => [0, 1]}
    entity_with_min_range = MinPairFinder.find_min_range(data)
    entity_with_min_range.should eq 1
  end
end