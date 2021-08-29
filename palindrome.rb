# Define a recursive function that returns true if a string is a
# palindrome and false otherwise.
def palindrome(string)
  return true if string.length == 1 || string.empty?

  string[0] == string[-1] ? palindrome(string[1..-2]) : false

  # string.downcase!
  # string.gsub!(/\W/,"")
  # string == string.reverse
end

puts "works with 'hello'. expect false; actual #{palindrome("hello")}"
puts "works with 'abba'. expect true, actual #{palindrome("abba")}"
puts "works with 'A man, a plan, a canal, Panama!'. expect true; actual #{palindrome("amanaplanacanalpanama")}"