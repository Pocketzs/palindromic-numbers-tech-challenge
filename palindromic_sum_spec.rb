require './palindromic_sum'

RSpec.describe '#palindromic_sum' do
  it 'finds the first twenty-five numbers where 
    the number plus its inverse equals a palindrome that 
    is greater than 1,000.' do
    set = palindromic_sum
    expect(set).to eq([209, 308, 407, 506, 605, 704, 803, 902, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017])
    expect(set).to be_a(Array)
    expect(set.size).to eq(25)
    set.each do |num|
      expect(num).to be_a(Integer)
      reverse = num.to_s.reverse.to_i
      palindrome = num + reverse
      expect(palindrome.to_s).to eq(palindrome.to_s.reverse)
      expect(palindrome).to be > 1000
    end
  end

  it 'lists all the reverse num sums' do
    nums = (1..1005).to_a
    list = reverse_sums(*nums)
  end
end