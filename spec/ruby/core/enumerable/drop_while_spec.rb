require_relative 'shared/enumerable_shared'

describe 'Enumerable#drop_while'  do
	include_context 'Enumerable shared'

	context 'when given a block' do
		it 'drops elements up to, but not including, the first one for which the block returns nil or false and returns an array containing the remaining elements.' do
			expect(digits.drop_while {|n| n <= 5}).to eq([6, 7, 8, 9])
			expect(digits.drop_while {|n| n.even?}).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])

			expect(digits.drop_while {false}).to eq(digits.to_a)
			expect(digits.drop_while {nil}).to eq(digits.to_a)
		end
	end

	context "if no block is given" do
		it "returns an Enumerator" do
			enumerator = digits.drop_while
			expect(enumerator).to       be_an_instance_of(Enumerator)
			digits.each  do |digit|
				expect(enumerator.next).to eq(digit)
			end
		end
	end
end