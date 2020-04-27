# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |e|
    result += e
  end
  result
end


def max_2_sum arr
  result = 0
    if arr.size == 0 then
      result = 0
    elsif arr.size == 1 then
      result = arr[0]
    else
       arr = arr.sort{|x,y| y<=>x}
      result = arr[0]+arr[1]
    end 
  result

end

def sum_to_n? arr, n
  arr = arr.combination(2)
  arr.each{|x| return true if x.sum == n}
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^(?=\w)([^?=aeiou])/i
end

def binary_multiple_of_4? s
  /^(0|00|([01]+00))$/.match?(s)
end

# Part 3

class BookInStock
attr_accessor :price, :isbn
  
  def initialize(a,b)
    raise ArgumentError, 'Empty isbn value' unless a!=''    
    raise ArgumentError, 'Need positive price' unless b > 0
    @isbn = a
    @price = b  
  end
  
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    '$%.2f'% [@price]
  end
end
