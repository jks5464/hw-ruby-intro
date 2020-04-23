# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum_arr = 0
  
  arr.each do |e|
    sum_arr += e
  end
  
  return sum_arr
end


def max_2_sum arr
  result = 0
    if arr.size == 0
      result = 0
    elsif arr.size == 1
      result = arr[0]
    else
       arr = arr.sort{|x,y| y<=>x}
      result = arr[0]+arr[1]
    end 
  return result

end

def sum_to_n? arr, n
  result = false
  
  for i in 0..(arr.length - 1)
    for j in (i + 1)..(arr.length - 1)
      sum = arr[i] + arr[j]
      if(sum == n)
        result = true
      end
    end
  end
  
  return result
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^(?=\w)([^?=aeiou])/i
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
attr_accessor :price, :isbn
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$" + '%.2f' % price
  end
end
