 shared_examples_for "Enumerable#collect_concat" do

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