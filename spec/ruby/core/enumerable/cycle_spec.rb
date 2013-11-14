require_relative "shared/enumerable_shared"

describe "Enumerable#cycle" do
    include_context "Enumerable shared"

    context "when given a parameter (n) and no block" do
      it "returns an enumerator" do
        whatever_n = 2
        enum = [1, 2, 3].cycle(whatever_n)        
        expect(enum).to be_instance_of(Enumerator)
        expect(enum.next).to eq(1)
        expect(enum.next).to eq(2)
      end
    end

    context "when given a block" do
      it "calls the block repeatedly" do
        pending "How to test this effectively?"
      end

      context "when also given a parameter (n)" do
        it "cycle n times over the collection of items, calling the block with each item" do
          sum = 0 
          digits.cycle(2) {|n| sum += n}
          expect(sum).to eq(2 * digits.reduce(:+))
        end 

        it "does nothing if n is negative (< 0)" do
          sum = 0
          digits.cycle(-5) {|n| sum += n}
          expect(sum).to eq(0)
        end

        it "does nothing if the collection is empty" do
          sum = 0
          [].cycle(5) {|n| sum += n}
          expect(sum).to eq(0)
        end

        it "calls the block repeatedly if n is nil"

        it "returns nil if the loop has finished without getting interrupted" do
          expect(digits.cycle(5) {}).to be_nil
        end
      end 
    end
  end