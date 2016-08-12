class HashOperations
  def self.count_characters(input_hash)
    sum_of_character_counts = Hash.new(0)

    input_hash.each do |input|
      sum_of_character_counts[input] += 1
    end

    sum_of_character_counts
  end
end

describe HashOperations do
  it "returns the count of elements of an array" do
    input = ["a", "a", "b"]
    expectation = {"a" => 2,
                   "b" => 1}

    resulting_hash = HashOperations.count_characters(input)

    expect(resulting_hash).to eq(expectation)
  end
end
