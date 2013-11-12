describe "Hash#spec" do
  
  subject { { first_name: "Eric", last_name: "Bouchut" } }
  
  
  context "when given a key" do

    context "without a block" do      
      it "raises a KeyError if the key does not exist" do      
        expect { subject.fetch(:brother) }.to raise_error(KeyError)
      end
    
      it "returns the corresponding value if the key does exist" do
        expect(subject.fetch(:first_name)).to eq("Eric")
      end
    end
    
    context "when given a block" do
      it "executes the block and uses it as its default value if the key does not exist" do
        expect(subject.fetch(:brother) {"Gil"}).to eq("Gil")
      end
      
      it "returns the correspoding value if the key does exist" do
        expect(subject.fetch(:first_name) {"G.a.f.o."}).to eq("Eric")
      end
    end
  end
end