# Define a recursive function that takes an argument n and returns
# the fibonacci value of that position. The fibonacci sequence
# is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and
# fib(6) should return 8.

def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  

  fib(n - 1) + fib(n - 2)
end

puts "works for fib(5). expect: 5; actual: #{fib(5)}"
puts "works for fib(5). expect: 8; actual: #{fib(6)}"



  
