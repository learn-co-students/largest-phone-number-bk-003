# your #largest_phone_number method goes here


def largest_phone_number(numbers)
	if numbers.empty? || numbers.class != Array 
		raise "hi there, these aren't arrays"
	else
		largest = "0"	
		numbers.each do |num|
			if phone_sum(num) >= phone_sum(largest)
				largest = num
			end
		end
		return largest
	end
end

def phone_sum(phone_num)
	sum = 0
	nums = phone_num.gsub(/[()-]+/, "").split("")
	nums.each do |num|
	   sum += num.to_i
	end 
	return sum
end