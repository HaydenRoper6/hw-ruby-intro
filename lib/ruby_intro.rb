# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.inject(0, :+)
end

def max_2_sum arr
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr.at(0)
  else
    arr = arr.sort
    return arr[arr.length()-1] + arr[arr.length()-2]
  end
end

def sum_to_n? arr, n
  for i in 0..arr.length()-2
    for j in (i+1)..arr.length()-1
      sum = arr[i] + arr[j]
      if sum == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.length() <= 0
    return false
  elsif !(s[0].match(/^[[:alpha:]]$/))
    return false
  else
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    return !vowels.include?(s[0])
  end
end

def binary_multiple_of_4? s
  if !s.scan(/\D/).empty?
    return false
  elsif s == ""
    return false
  else
    return s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
  def initialize(key, price)
    raise ArgumentError.new("ISBN must be valid, but got #{key}") if key == ""
    raise ArgumentError.new("Price must be a positive number, but got #{price}") if price <= 0
    @isbn = key
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(key)
    @isbn = key
  end
  
  def price
    @price
  end
  
  def price=(p)
    @price = p
  end
  
  def price_as_string
    return "$%.2f" % @price 
    
  end
  
    
end
