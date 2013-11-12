describe "Hash#spec" do
  
  subject { { first_name: "Eric", last_name: "Bouchut" } }
  
  
  context "when given a key" do
    
    it "raises a KeyError if the key does not exist" do      
      expect { subject.fetch(:brother) }.to raise_error(KeyError)
    end
    
    it "returns the corresponding value if the key exists" do
      expect(subject.fetch(:first_name)).to eq("Eric")
    end
  end
end