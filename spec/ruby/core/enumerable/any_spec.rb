require_relative "shared/enumerable_shared"

describe "Enumerable~any?" do
    include_context "Enumerable shared"
    
    it "returns true if the block is true for at least one item" do
      expect(digits.any? {|n| n.even?}).to be_true
    end

end
