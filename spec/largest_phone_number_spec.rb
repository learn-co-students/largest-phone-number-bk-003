describe "#largest_phone_number" do
  it "doesn't change the original array of phone numbers" do
    numbers = ['123-456-7777', '963-481-7945', '111-222-3333']
    largest_phone_number(numbers)
    expect(numbers).to eq(numbers)
  end

  it "finds the largest number with only dashes" do
    numbers = ['123-456-7777', '963-481-7945', '111-222-3333']
    expect(largest_phone_number(numbers)).to eq('963-481-7945')
  end

  it "finds the largest number with parenthesis and dashes" do
    numbers = ['(123)456-7777', '(963)481-7945', '(111)222-3333']
    expect(largest_phone_number(numbers)).to eq('(963)481-7945')
  end

  it "finds the largest number with parenthesis, dashes, and spaces" do
    numbers = ['(123) 456-7777', '(963) 481-7945', '(111) 222-3333']
    expect(largest_phone_number(numbers)).to eq('(963) 481-7945')
  end

  it "finds the largest number with a mixture of punctuation" do
    numbers = ['(123) 456-7777', '963-481-7945', '(111) 222-3333']
    expect(largest_phone_number(numbers)).to eq('963-481-7945')
  end

  it "returns the only number if given an array of one element" do
    expect(largest_phone_number(['123-456-7899'])).to eq('123-456-7899')
  end

  it "returns the last element if there is a tie" do
    numbers = ['555-555-5555','111-111-1111','(555)555-5456','222-121-2121']
    expect(largest_phone_number(numbers)).to eq('(555)555-5456')
  end

  it "raises an error if passed empty array" do
    expect { largest_phone_number([]) }.to raise_error
  end

  it "raises an error if passed a non-array argument" do
    ["hi", :there, {:these => "aren't arrays"}, Set.new].each do |arg|
      expect { largest_phone_number(arg) }.to raise_error
    end
  end
end
