require_relative "shared/select"

describe 'Enumerable#find_all' do
    it_behaves_like "Enumerable#select"
end