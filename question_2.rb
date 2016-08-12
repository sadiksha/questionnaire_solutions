class Foo
  def self.hello_world
    "#{__method__}"
  end

  def self.hi
    "#{__method__}"
  end

  def method_missing(meth,*args)
    "undefined method #{meth}"
  end
end

describe Foo do
  it "returns the name of called class method" do
    first_expectation = "hello_world"
    expect(Foo.hello_world).to eq(first_expectation)

    second_expectation = "hi"
    expect(Foo.hi).to eq(second_expectation)
  end

  it "returns message for undefined instance method" do
    expectation = "undefined method bar"
    expect(Foo.new().bar).to eq(expectation)
  end
end
