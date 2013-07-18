describe "Enumerable" do

  let(:numbers) do
    [53, 42, 10, 19]
  end

  describe "#all?" do
    describe "when given a block" do
      it "return true if the block returns true for all of the items" do
        numbers.all? {|n| n.even?}.should be_false
        numbers.all? {|n| n < 100}.should be_true
      end
    end
  end

  context "#any?" do
    context "when given a block" do
      it "returns true if the block is true for at least one item" do
        expect(numbers.any? {|n| n > 20}).to be_true
      end
    end
  end

  context "#chunk" do
    context "when given a block" do
      pending
    end
  end

  context "#collect_concat (alias #flat_map)" do

    context "when given a block" do
      it "returns a new array with the concatenated results of running block once for every element in enum." do
        expect( [[1, 2], [3, 4]].collect_concat {|array| array}).to eq( [1, 2, 3, 4])
      end 
    end
    context "if no  block is given" do
      it "returns an enumerator" do
        enum = [[1, 2], [3, 4]].collect_concat

        expect(enum).to be_instance_of(Enumerator)
        expect(enum.next).to eq([1, 2])
        expect(enum.next).to eq([3, 4])
      end
    end
  end

  context "#count" do
    context "if no block  nor parameter is given" do
      it "count the numbers of items in the numeration" do
        expect(numbers.count).to eq(4)
      end
    end
    context "when given a parameter (n)" do
      it "count the number of items in the numeration, for which equals to n" do
        expect(numbers.count(53)).to eq(1)
      end 
    end
    context "when given a block" do
      it "count the number of items, for which the block yields a true value" do
        expect(numbers.count {|n| n < 20}).to eq(2)
      end
    end
  end

  context "#find (alias #detect)" do
    context "when given a block" do 
      it "returns the first item for which the block is true" do
        expect(numbers.find {|n| n > 20}).to eq(53)
      end
    end 
  end

  context "#select (alias #find_all)" do
    context "when given a block" do
      it "returns the items for which the block is true" do
        expect(numbers.select {|n| n > 20}).to eq([53, 42])
      end
    end
  end

  context "#map (alias #collect)" do
    context "when given a block" do
      it "returns an array with the values of the block" do
        expect(numbers.map {|n| n * 2 }).to eq( [106, 84, 20, 38])
      end
    end

    context "if no block is given" do
      it "returns an Enumerator" do
        enum = numbers.map

        expect(enum).to be_instance_of(Enumerator) 
        expect(enum.next).to eq(53)
        expect(enum.next).to eq(42)
        expect(enum.next).to eq(10)
        expect(enum.next).to eq(19)
      end
    end
  end

end
