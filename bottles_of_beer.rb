# Define a recursive function that takes an argument n and prints "n
# bottles of beer on the wall", "(n-1) bottles of beer on the wall",
# ..., "no more bottles of beer on the wall".

def bottles(n)
  if n.zero?
    return puts "No more bottles of beer on the wall"
  elsif n == 1
    puts "1 bottle of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
  end
  bottles(n-1)
end

bottles(3)



