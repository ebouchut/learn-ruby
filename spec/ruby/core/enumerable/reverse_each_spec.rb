require_relative 'shared/enumerable_shared'

describe 'Enumerable#reverse_each' do
	include_context 'Enumerable shared'
  
  context "when given a block" do
    it "builds a temporary array and iterates over it in reverse order, passing each item to the block" do
      reverse_digits = ""
      digits.reverse_each do |digit|
        reverse_digits += digit.to_s
      end
      expect(reverse_digits).to eq("9876543210")
    end
  end
  
  context "if no block is given" do
    it "returns an enumerator that iterates over in the reverse order" do
      enumerator = digits.reverse_each
      
      expect(enumerator).to be_instance_of(Enumerator)
      9.downto 0 do |digit|
        expect(enumerator.next).to eq(digit)
      end
    end
  end
end