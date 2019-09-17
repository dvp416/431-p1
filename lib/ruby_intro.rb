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

end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
