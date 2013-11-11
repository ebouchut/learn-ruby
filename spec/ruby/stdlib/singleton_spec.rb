require "singleton"

class TheMovie
  include Singleton
end

describe "Singleton" do
  
  it "prevents #new from being called, making it private and raising NoMethodError when called" do
    expect {TheMovie.new}.to raise_error(NoMethodError, /private method .new. called/)
  end
  
  it "#instance to create the single instance of this class" do
    expect(TheMovie.instance.object_id).to eq(TheMovie.instance.object_id)
  end
end