# your #largest_phone_number method goes here
def largest_phone_number(array)
	clone = array.clone
	sum = []
	clone.each do |num|
		numbers = []
		num.split("").each do |e|
			numbers << e.to_i
		end
		sum << numbers.inject(:+)
	end
	array[sum.each_index.select{|i| sum[i] == sum.max}.last]
end