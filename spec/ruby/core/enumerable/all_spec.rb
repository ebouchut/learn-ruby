require_relative "shared/enumerable_shared"

describe "Enumerable#all?" do
	include_context "Enumerable shared"

	context "when given a block" do
		it "return true if the block returns true for all of the items" do
			expect(digits.all? {|n| n.even?}).to be_false
			expect(digits.all? {|n| n < 10}).to be_true
		end
	end

	context "if no block is given" do
		it "returns true if none of the items are false or nil" do
			expect(digits.all?).to be_true
			expect([1, 2, false].all?).to be_false
			expect([1, 2, nil].all?).to be_false
		end
	end
end