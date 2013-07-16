describe "Array" do
  let(:numbers) do
    (1..10).to_a
  end


  it "select" do
    evens = numbers.select {|n| n.even?}

    expect(evens).to eq( [2, 4, 6, 8, 10])
  end

  it "reject" do
    odds = numbers.reject {|n| n.even?}

    expect(odds).to eq( [1, 3, 5, 7, 9])
  end

  it "partition" do
    evens, odds = numbers.partition {|n| n.even? }

    expect(odds).to eq( [1, 3, 5, 7, 9])
    expect(evens).to eq([2, 4, 6, 8, 10])
  end

  context"inject" do
    it "accumulates" do
      expect(numbers.inject {|sum, n| sum += n}).to eq(55) 
      expect(numbers.inject(:+)).to eq(55)
    end


    context "given an empty array" do
      let(:numbers) do
        []
      end

      context "whith no argument" do
        it "returns nil" do
          expect(numbers.inject {|sum, n| sum += n}).to be_nil
          expect(numbers.inject(:+)).to be_nil
        end
      end

      context "with an argument" do
        it "returns this argument" do
          initial_value = 0
          total = numbers.inject(initial_value) {|sum, n| sum += n}

          expect(total).to eq(initial_value)
        end
      end
    end

    it "#sort" do
      expect([5, 3, 1, 2, 4].sort).to eq( [1, 2, 3, 4, 5])
    end

    it "#sort_by" do
      words = ["World!", "Ruby", "Hello"].sort_by {|word| word.length}

      expect(words).to eq( ["Ruby", "Hello", "World!"])
    end

    context "#sample" do
      it "returns a random array item" do
        allow(numbers).to receive(:sample).and_return(4, 2, 8)

        expect(numbers.sample).to eq(4)
        expect(numbers.sample).to eq(2)
        expect(numbers.sample).to eq(8)
      end
    end
  end 
end