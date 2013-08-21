describe "Enumerable#drop_while" do

	it "returns an Enumerator if no block is given" do
		enumerator = [1, 2, 3].drop_while
		
		expect(enumerator).to be_an_instance_of(Enumerator)
		expect(enumerator.next).to eq(1)
		expect(enumerator.next).to eq(2)
		expect(enumerator.next).to eq(3)
	end
end