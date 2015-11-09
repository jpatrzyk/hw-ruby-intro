# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.reduce(0, :+)
end

def max_2_sum arr
  return arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  return arr.combination(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s.match(/^[^aeiou\W]/i) != nil
end

def binary_multiple_of_4? s
  return s.match(/^(0|[01]*00)$/) != nil
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "$%.2f" % @price
  end
end
