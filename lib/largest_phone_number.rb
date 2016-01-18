require 'pry'
def largest_phone_number(num_arr)
	largest = 0 
	largest_i = 0 
	num_arr.each.with_index do |num, ind|
		x = num.gsub(/[()-]/,"")
		sum = 0
		x.each_char { |y| sum+=y.to_i }
		if sum >= largest
			largest = sum
			largest_i = ind 
		end

	end
	raise 'Exception' if num_arr.length == 0 
	num_arr[largest_i]
end
