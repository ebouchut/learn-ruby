require_relative 'shared/enumerable_shared'

describe 'Enumerable#drop(n)' do
	include_context 'Enumerable shared'

	it 'drops the first n elements from enum, and returns the rest in an array.' do
		expect(digits.drop(5)).to eq([5, 6, 7, 8, 9])
	end

end