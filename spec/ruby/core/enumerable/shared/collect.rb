require_relative 'enumerable_shared'

shared_examples_for "Enumerable#collect" do
    include_context "Enumerable shared"
    
    context "when given a block" do
      it "returns an array with the values of the block" do
        expect(digits.map {|n| n * 2 }).to eq( [0, 2, 4, 6, 8, 10, 12, 14, 16, 18])
      end
    end

    context "if no block is given" do
      it "returns an Enumerator" do
        enum = digits.map

        expect(enum).to be_instance_of(Enumerator) 
        10.times do |n|
          expect(enum.next).to eq(n)
        end
      end
    end
  end