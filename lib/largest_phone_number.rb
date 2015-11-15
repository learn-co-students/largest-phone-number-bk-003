require 'pry'
# your #largest_phone_number method goes here

def largest_phone_number(arr)
	if (arr.size == 0 || !arr.is_a?(Array))
		raise "error"
		return
	end
	data = arr.map { |x| [x.scan(/\d/).map(&:to_i).inject(:+), x] }

	data.sort_by! { |d|  
		d[0]
	}
	binding.pry

	data.size.downto(1) { |i|
		next if (i>(data.size-1) )
		break if (data[i][0] != data[i-1][0])
		data.pop
	}

	data[-1][1]
end