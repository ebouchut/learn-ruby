describe "Enumerable" do
  
  let(:numbers) do
    [53, 42, 10, 19]
  end

  describe "all?" do
    describe "when given a block" do
      it "return true if the block returns true for all of the items" do
        numbers.all? {|n| n.even?}.should be_false
        numbers.all? {|n| n < 100}.should be_true
      end
    end
  end

  context "any?" do
    context "when given a block" do
      it "returns true if the block is true for at least one item" do
        numbers.any? {|n| n > 20}.should  be_true
      end
    end
  end

  context "find (alias detect)" do
    context "when given a block" do 
      it "return the first item for which the block is true" do
        numbers.find {|n| n > 20}.should == 53
      end
    end 
  end

  context "select (alias find_all)" do
    context "when given a block" do
      it "return the items for which the block is true" do
        numbers.select {|n| n > 20}.should == [53, 42]
      end
    end
  end

  context "map" do
    context "when given a block" do
      it "return a new enumerable with the result of the block for each item" do
        numbers.map {|n| n * 2 }.should == [106, 84, 20, 38]
      end
    end
  end

end
