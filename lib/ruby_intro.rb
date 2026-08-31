# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.sort.last(2).sum
end

def sum_to_n?(arr, number)
  arr.combination(2).any? { |a, b| a + b == number }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  !!(string =~ /\A[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4?(string)
  return false unless string =~ /\A[01]+\z/

  string.to_i(2) % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
