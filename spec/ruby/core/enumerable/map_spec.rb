require_relative 'shared/collect'

describe 'Enumerable#map' do
    it_behaves_like 'Enumerable#collect'
end