# your #largest_phone_number method goes here
def largest_phone_number(array)
if (!array.kind_of?(Array) || array == [])
raise StandardError, "aren't arrays"
end
  coll = []

array.each do |m|
  arr = [] 
m.gsub('-','').gsub("(", "").gsub(")","").gsub(" ", "").split("").each do |i|
  arr <<  i.to_i  
    end 
 coll << arr.inject(:+)
  end
  big = coll.index(coll.max)
if (coll != coll.uniq)
 cool = coll.each_with_index.select {|a,i| a == coll[big] }
return array[cool[1][1]]
else
return array[big]
end
end