# Use the roman_mapping hash to define a recursive method that
# converts an integer to a Roman numeral.
# helpful site with info: https://www.rapidtables.com/convert/number/how-number-to-roman-numerals.html

def integer_roman(number, roman = [])
roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
return roman.join if number == 0

key = roman_mapping.keys.select { |key| key <= number}[0]
roman << roman_mapping[key]
integer_roman(number - key, roman)
end

puts "converts 3. expect: III; actual #{integer_roman(3)}\n"
puts "converts 36. expect: XXXVI; actual #{integer_roman(36)}\n"
puts "converts 14. expect: XIV; actual: #{integer_roman(14)}\n"
puts "converts 2012. expect: MMXII; actual #{integer_roman(2012)}\n"
puts "converts 1996. expect: MCMXCVI; actual #{integer_roman(1996)}\n"
