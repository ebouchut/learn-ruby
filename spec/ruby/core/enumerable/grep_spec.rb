require_relative "shared/enumerable_shared"

describe "Enumerable#grep" do
	include_context "Enumerable shared"
  
  
  context "if no block is given" do
    it "when given a range: returns an array of items within the passed in range (all items for which: range === item)" do
      expect(digits.grep(3..5)).to eq([3, 4, 5])
    end
    
    it "when given a regex: returns an array of items maching the passed in regular expression (all items for which: regex === item)" do
      expect(["A", "BC", "DE", "F"].grep(/../)).to eq(["BC", "DE"])
    end
  end
  

  context "when given a parameter and a block" do
    it "returns an array. Each matching item (parameter == item) is passed to the block, and the block’s result is stored in the output array." do
      expect(["A", "BC", "DE", "F"].grep(/../) do |two_chars|
        two_chars.downcase
      end).to eq(["bc", "de"])
    end
  end

  
end