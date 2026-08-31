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
  attr_reader :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def isbn=(new_isbn)
    raise ArgumentError, 'ISBN cannot be empty' if new_isbn.empty?

    @isbn = new_isbn
  end

  def price=(new_price)
    raise ArgumentError, 'Price must be greater than zero' if new_price <= 0

    @price = new_price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
