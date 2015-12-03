# your #largest_phone_number method goes here
def largest_phone_number(arr)
	raise 'argument must be an array containing some data' if (arr.empty? || !arr.is_a?(Array))
	sum = arr.map { |a| a.gsub(/[\(\-)]/, '').split('').map(&:to_i).inject { |total, num| total += num} }
	arr[sum.rindex(sum.max)]
end
