require 'forwardable'

class Delegator
  extend Forwardable   # Note the use of __extend__ here
  
  attr_reader :delegate
  
  def initialize(delegate)
    @delegate = delegate
  end
  
  def_delegator :delegate, :hello
  def_delegator :delegate, :hello, :say_hello
  def_delegators :delegate, :goodbye, :hi
end