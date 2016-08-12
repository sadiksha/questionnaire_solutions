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

  it "returns positive result from addition of two numbers" do
    expect(@sum).to be(4)
  end

  it "returns non negative and non decimal number for addition of whole numbers" do
    expect(@sum).to be > 0
    expect(@sum).to be > 0.1
  end
end
