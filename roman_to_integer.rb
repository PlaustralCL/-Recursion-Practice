# Use the roman_mapping hash to define a recursive method that
# converts a Roman numeral to an integer.
# helpful site with procss:  https://www.rapidtables.com/convert/number/how-roman-numerals-to-number.html
def roman_integer(string, number = 0)
roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

return number if string.empty?

number += roman_mapping[string[0..1]] || roman_mapping[string[0]]
key = roman_mapping.has_key?(string[0..1]) ? string[0..1] : string[0]
roman_integer(string.sub(key, ""), number)
end

puts "converts XXXVI. expect: 36; actual: #{roman_integer("XXXVI")}\n"
puts "converts MMXII. expect: 2012; actual: #{roman_integer("MMXII")}\n"
puts "converts MCMXCVI. expect: 1996; actual: #{roman_integer("MCMXCVI")}\n"