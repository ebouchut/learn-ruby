require_relative 'shared/collect.rb'

describe 'Enumerable#map' do
    it_behaves_like 'Enumerable#collect'
end