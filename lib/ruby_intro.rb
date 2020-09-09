# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr.first if arr.length == 1

  arr.sort{ |x, y| y <=> x }.take(2).reduce(:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  return true if /^[^aeiouAEIOU\W]/i.match(s) != nil
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty?
  return false if /[^01]+/.match(s) != nil
  num = 0
  i = s.length
  count = 1
  while i > 0
    num += (s[i].to_i)*count
    i -= 1
    count *= 2
  end
  if num%4 == 0
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)  
    # Instance variables  
    @isbn = isbn  
    @price = price  
    
  raise ArgumentError.new(
    "ISBN is empty"
  ) if isbn.size == 0
  
  raise ArgumentError.new(
    "Negative price not allowed"
  ) if price <= 0
end

def isbn 
    @isbn
end

def price 
    @price
end

def isbn=(isbn) 
    @isbn = isbn 
end
  
def price=(price) 
    @price = price 
end

def price_as_string
  sprice = price.to_s
  dot = sprice.index(".")
  if dot != nil
    if sprice.length - dot == 3
      return "$" + sprice
    else
      return "$" + sprice + "0"
    end
  else
    return "$" + sprice + ".00"
  end
end

end
