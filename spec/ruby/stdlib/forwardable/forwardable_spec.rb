require_relative 'delegator'
require_relative 'delegate'

describe "Forwardable" do

  it "#def_delegator" do    
    delegator = Delegator.new(Delegate.new)
    expect(delegator.hello).to     eq "Hello"
    expect(delegator.say_hello).to eq "Hello"
  end
  
  it "#def_delegators" do
    delegator = Delegator.new(Delegate.new)
    expect(delegator.hi).to eq("Hi")
    expect(delegator.goodbye).to eq("Goodbye")
  end
  
end