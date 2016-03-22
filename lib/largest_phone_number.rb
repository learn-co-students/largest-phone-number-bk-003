# your #largest_phone_number method goes here
require 'pry'
def largest_phone_number(numbers)
  if numbers.empty?
    raise 'Exception'
  end
  m = [0,-1]
  #binding.pry
  numbers.each_index do |i|
    s = 0 
    numbers[i].each_char do |c|
      if c != '-'
        s += c.to_i
      end
    end
    if s >= m[0]
      m[0] = s
      m[1] = i
    end
  end
  numbers[m[1]]
end



