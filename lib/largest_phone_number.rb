# your #largest_phone_number method goes here
def largest_phone_number(arr)
	raise 'argument must be an array containing some data' if (arr.empty? || !arr.is_a?(Array))
	# answer = '' 
	# sum = 0
	# arr.each do |number|
	# 	temp_sum = number.gsub(/[\(\-)]/, '').split('').map(&:to_i).inject { |total, num| total += num }
	# 	if temp_sum >= sum
	# 		sum = temp_sum
	# 		answer = number
	# 	end
	# end
	sum = arr.map { |a| a.gsub(/[\(\-)]/, '').split('').map(&:to_i).inject { |total, num| total += num} }
	arr[sum.rindex(sum.max)]
end
