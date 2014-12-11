require_relative '../../../kata/kata03-data-munging/lib/min_pair_finder'
require 'rspec'

describe 'min_pair_finder.rb' do

  it 'should return int with a pair that has minimum range' do
    data = [[0,0,10],[1,0,1]]

    int = MinPairFinder.find_min(data)

    int.should be 1
  end
end