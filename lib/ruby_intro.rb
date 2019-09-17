# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.empty?
    0
  else
    i = 0
    out = 0
    while i < arr.length
      out += arr[i]
      i += 1
    end
    out
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    maxes = arr.max(2)
    maxes[0] + maxes[1]
  end
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.empty?
    false
  elsif arr.length == 1
    false
  else
    arr.combination(2).any?{ |first, second| first + second == n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s.empty?
    false
  elsif (s !~ /\A[aeiouAEIOU!@#$%^&*()]/) && (s =~ /[\w]*/)
    true
  else
    false
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s.empty?
    false
  elsif s == '0'
    true
  elsif s.length < 3
    false
  elsif s.chars.any? {|digit| digit !~ /[01]/}
    false
  elsif (s.chars[s.length-2] == '0' && s.chars[s.length-1] == '0')
    true
  else
    false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
  if isbn.empty? || price <= 0
    raise(ArgumentError, 'Argument Error')
  end
    @isbn = isbn
    @price = price
  end

def price_as_string
  decimal = false
  if (@price.to_s.include? ".")
    decimal = true
  end

  out = '$' + @price.to_s
  if !decimal
    out += '.00'
  elsif (@price.to_s.index('.') == @price.to_s.length - 2)
    out += '0'
  end
  out
end
end
