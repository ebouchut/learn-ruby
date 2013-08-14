 require_relative "shared/enumerable_shared"
 
 describe "Enumerable#count" do
    include_context "Enumerable shared"
    
    context "with no parameter" do
      it "count the number of items in the enumeration" do
        expect(digits.count).to eq(10)
      end
    end
    context "when given a parameter (n)" do
      it "count the number of items in the enumeration, for which equals to n" do
        expect([1, 2, 3, 2].count(2)).to eq(2)
      end 

    end
    context "when given a block" do
      it "count the number of items, for which the block yields a true value" do
        expect(digits.count {|n| n > 5}).to eq(4)
      end
    end
  end