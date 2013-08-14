require_relative "enumerable_shared"

shared_examples_for "Enumerable#select" do
    include_context "Enumerable shared"
    
    context "when given a block" do
      it "returns the items for which the block is true" do
        expect(digits.select {|n| n > 5}).to eq([6, 7, 8, 9])
      end
    end
  end 

