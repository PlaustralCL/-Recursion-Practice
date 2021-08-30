# Define a recursive function that flattens an array. The method
# should convert [[1, 2], [3, 4]] to [1, 2, 3, 4]
# and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def flatten_array(array, result = [])
  array.each do |element|
    if element.is_a? Array
      flatten_array(element, result)
    else
      result << element
    end
  end
  result
end


puts "converts [[1, 2], [3, 4]] to [1, 2, 3, 4]."
puts "expect: [1, 2, 3, 4];"
puts "actual: #{flatten_array([[1, 2], [3, 4]])}"
puts ""
puts "converts [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4]."
puts "expects: [1, 8, 9, 3, 4]"
puts "actual: #{flatten_array([[1, [8, 9]], [3, 4]])}"