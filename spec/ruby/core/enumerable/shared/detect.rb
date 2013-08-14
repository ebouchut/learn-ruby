  require_relative 'enumerable_shared'
  
  shared_examples_for "Enumerable#detect" do
    include_context "Enumerable shared"
    
    context "when given a block" do 
      it "returns the first item for which the block is true" do
        expect(digits.detect {|n| n > 5}).to eq(6)
      end
      
      it "returns the result of the call to passed in proc of lambda in cases where no object in the collection matches the criteria." 
    end 
    
    context "when no block is given" do
      it "returns an Enumerator"
    end
  end
