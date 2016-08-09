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

  it "asserts negative result after addition of two numbers is not correct" do
    expect(@sum).not_to be(1)
    expect(@sum).not_to be(2)
    expect(@sum).not_to be(3)
  end
end
