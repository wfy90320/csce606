# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum()#Sum the numbers in the array 
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length  == 0
    return 0
  end
  sorted_arr = arr.sort.reverse#Sort the array from big to small 
  if sorted_arr.length == 1
    return sorted_arr[0]
  else
    return (sorted_arr[0]+sorted_arr[1])#Sum the two maxnumbers 
  end
  
end

def sum_to_n? arr, n

  if arr.length < 2 #Test if the array contains only one number or empty
    return false#If so, return False 
  end
  a = true
  arr.each_with_index do |num,idx|#Loop the whole array 
    
    if (arr.include?(n-num) ) && num != (n/2)#Test if there is another number equal to n-num
      return true
    else
      a = false
    end
  end
  return a
end



# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  str.concat(name.to_s).to_s#Combine the "hello, " with the input name 
  return str
  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  first_chr = s.to_s.chr.downcase

  all_letter = ("a".."z").to_a #Generate all the letters
  non_cos = ['a','e','i','o','u'] #Generate all the consonants
 
  if all_letter.include? first_chr #Tese if the fisrt character is a letter
    a = true
  else
    return false
  end
  
  if non_cos.include? first_chr#Tese is the first charactor is a consonant 
    return false
  else
    a = true
  end
  return a
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''
    return false
  end

  for n in 0...s.length
    if s[n] != "1" && s[n] != "0"
      return false
    end
  end
  
  decimal = s.to_i(2)#Convert binary to decimal number 
  
  if (decimal % 4 == 0)#Test if the decimal number is multiple of 4
    return true
  else 
    return false
  end

end
#puts binary_multiple_of_4?('100')
# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @isbn.empty? || @price <= 0
      raise ArgumentError
    end
  end
  def price_as_string
    price_s = sprintf('%.2f', @price)
    str = "$"
    str.concat(price_s.to_s)
  end
end
