def is_prime n
  if n == 1
    return false
  elsif n == 2
    return true
  elsif n % 2 == 0
    return false
  else
    3.upto(n/2) do |i|
      return false if n % i == 0
    end
    return true
  end
end

def PrimeMover(count)
  number = 1
  i = 0
  while i < count.to_i
    number += 1
    if is_prime(number)
      i += 1
    end
  end
  number
end

# keep this function call here
# to see how to enter arguments in Ruby scroll down
puts PrimeMover(STDIN.gets)
