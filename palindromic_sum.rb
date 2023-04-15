# def palindromic_sum
#   count = 0
#   num = 0
#   result = []
#   while count < 25
#     # calculate the inverse of num
#     inverse = num.to_s.reverse.to_i
#     # calculate the sum of num and its inverse
#     total = num + inverse
#     # check if the sum is a palindrome and greater than 1000
#     if total == total.to_s.reverse.to_i && total > 1000
#       result << num
#       count += 1
#     end
#     # move on to the next number
#     num += 1
#   end
#   result
# end

def palindromic_sum
  count = 0
  num = 0
  result = []
  while count < 25
    # calculate the inverse of num
    inverse = reverse_num(num)
    # calculate the sum of num and its inverse
    total = num + inverse
    # check if the sum is a palindrome and greater than 1000
    if total == reverse_num(total) && total > 1000
      result << num
      count += 1
    end
    # move on to the next number
    num += 1
  end
  result
end

# helper function to reverse an integer
def reverse_num(num)
  rev = 0
  while num > 0
    rev = rev * 10 + (num % 10)
    num /= 10
  end
  rev
end

# just for fun
def reverse_sums(*nums)
  nums.map do |num|
    reverse = reverse_num(num)
    total = reverse + num
    {
      num: num, 
      reverse: reverse, 
      total: total, 
      statement:"#{num} + #{reverse} = #{total}",
      multiple: total / 11
    }
  end.select { |num| num[:total] > 1000 && num[:total] == reverse_num(num[:total])}
end
