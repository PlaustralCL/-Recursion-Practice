# Define a recursive function that finds the factorial of a number.
def factorial(n)
  return 1 if n == 1

  n * factorial(n - 1)
end

puts "1!. expect 1; actual #{factorial(1)}"
puts "5!. expect 120; actual #{factorial(5)}"
