# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  
  # Sum the array
  arr.sum

end

def max_2_sum arr
  
  # Get 2 max elements in the array and sum those elements
  max = arr.max(2)
  max.sum

end

def sum_to_n? (arr,n)

  cond = false

  for i in 0..(arr.length) do
    for j in (i + 1)..(arr.length) do
      if (!arr[i].nil? && !arr[j].nil?)
        if (arr[i] + arr[j] == n)
          cond = true
        end
      end
    end
  end

  return cond
  
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s

  if s[0] =~ /[^aeiouAEIOU]/ and s[0] =~ /[a-zA-Z]/
    puts "#{s[0]} is a consonant"
    return true
  else
    puts "#{s[0]} is not a consonant"
    return false
  end

end

# Since this method is optional, I did not do it
def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock

  # The attribute accessor allows the attributes to be changed
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)

    if isbn == '' or price <= 0
        begin
          raise ArgumentError
        end
    else
      @isbn = isbn
      @price = price
    end

  end

  def price_as_string
    return "$#{price.round(2)}"
  end

end

