def largest_phone_number(arr)
	raise "error" if (arr.size == 0 || !arr.is_a?(Array))

	arr.sort! { |a,b| 
		sum1 = a.scan(/\d/).map(&:to_i).inject(:+)
		sum2 = b.scan(/\d/).map(&:to_i).inject(:+)
		(sum1 <=> sum2) == 0 ? -1 : (sum1 <=> sum2)
	}[-1]
end