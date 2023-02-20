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

  # Set an initial condition to false
  cond = false

  # For all elements in array (indexes start at 0, so must use arr.length - 1
  # to correctly iterate over all elements in the array).
  for i in 0..(arr.length - 1) do

    # For all following elements in array
    for j in (i + 1)..(arr.length - 1) do

      # If this element and the next one are both not null
      if (!arr[i].nil? && !arr[j].nil?)

        # If the current element and the next one sum to n,
        if (arr[i] + arr[j] == n)

          # Set the condition to true because two elements sum to n
          cond = true

        end
      end
    end
  end

  # Return the boolean value of condition to satisfy "?" 
  # that signifies the method returns a boolean
  return cond
  
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s

  # Using regular expression format 'variable =~ / /,' if the first letter of the string
  # is not a lowercase or uppercase value (the carrot (^) signifies not any
  # of the following) and is a letter ('-' is a range of characters)
  if s[0] =~ /[^aeiouAEIOU]/ and s[0] =~ /[a-zA-Z]/

    # Print that that character (using #{} to print the character) is a consonant 
    # and return true to satisfy '?'
    puts "#{s[0]} is a consonant"
    return true
  else

    # Else, print that that character is not a consonant and return false
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
  # We want this when we run our tests
  # attr_reader only allows the attributes to be read
  attr_accessor :isbn
  attr_accessor :price

  # For every new instance of the class, define isbn and price as long as
  # they meet the required formats
  def initialize(isbn, price)

    # If isbn is blank or price is 0 or less, raise argument error.
    # Else, use getters and setters to access isbn and price for every
    # object instance.
    if isbn == '' or price <= 0.00
        begin
          raise ArgumentError
        end
    else
      @isbn = isbn
      @price = price
    end

  end

  # This method returns the value of single-precision
  # floating-point number price rounded to 2 decimal places.
  def price_as_string
    return "$%.2f" % price
  end

end

