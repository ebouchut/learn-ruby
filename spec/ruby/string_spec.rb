describe "String" do
	let(:string) do 
		"ABCDEFGHIJK"
	end

	context "#scan(pattern_or_string)" do
		context "if no block is given" do
			context "if pattern_or_string does not contain group" do
				it "returns an array with each string matching the pattern" do
					expect(string.scan(/[aeiouy]/i)).to eq ['A', 'E', 'I']
				end
			end
			context "if pattern_or_string contains group(s)" do
				it "returns an array of groups (array of strings)" do
					expect("Hello Ruby World!".scan(/(\w+)/)).to eq([["Hello"],["Ruby"],["World"]])
				end	
			end			
		end
		context "when given a block" do
			pending
		end
	end
end

