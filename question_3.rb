class NumberAddition
  def self.add(x, y)
    x + y
  end
end

describe NumberAddition do
  before(:each) do
    x = 1
    y = 3
    @sum = NumberAddition.add(x, y)
  end

  it "asserts positive result from addition of two numbers" do
    expect(@sum).to be(4)
  end

  it "asserts the result to be non negative and greater than decimal number" do
    expect(@sum).to be > 0
    expect(@sum).to be > 0.1
  end
end
