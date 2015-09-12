# When done, submit this entire file to the autograder.

# Part 1

def sum arr 
  if (arr.length == 0)
    #handle the empty array
    return 0
  end
  if (arr.length > 0)#sum the array
    sum = 0
    arr.each do |x|
      sum += x
    end
    return sum
  end
end


def max_2_sum arr
  sum = 0
  if (arr.length ==0)#handle the empty array
    return 0
  end
  if (arr.length == 1)#handle the 1 value array
    return arr[0]
  end
  if (arr.length >1)
    arr.sort!.reverse!#sort the array in ascending order and then reverse the order so that the length of the array doesn't matter
    sum = arr[1]+arr[0]#sum the first and second values (the two highest)
  end
end  

def sum_to_n? arr, n
  bool = false
  sum = 0
  if (arr.length <= 1) # Array has 1 member or is empty
    return bool
  end
  if (arr.length > 1) # Array has more than one member
    for i in 0...arr.length
    j = i+1 #ensure a number isn't summed with itself
      for j in j...arr.length
      sum = arr[i] + arr[j]
        if(sum == n)
          bool = true
        end #end if
      end#end inner for
    end#end outer for
    return bool
  end#end if
end
 

# Part 2

def hello(name)
  final = "Hello, " + name# Concatenate
  return final
end

def starts_with_consonant? s
  bool = true #assume it starts with a consonant unless proven otherwise
  s.downcase! #make code case-insensitive
  if(["a","e","i","o","u"].include?(s[0]))#see if the value is included in the set of vowels
    bool = false
  end
  if(s.length < 1) #check if the string is empty
    bool = false
  end
  if(!/[a-z]/.match(s[0])) #check if the value is not a lowercase letter
    bool = false
  end
  return bool
end

def binary_multiple_of_4? s
  bool = false
  if(s.length < 1)#check if string is empty
    return bool
  end
  if(/^[0-1]*$/.match(s))#check that the string contains only 0s and 1s
    int = s.to_i(10)#convert the string to a base 10 integer
    if(int%4 == 0)#check if integer is a multiple of 4
       bool = true
    end
  else
    bool = false
  end
  return bool
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price #automatically create get/set functions for class
 def initialize(isbn,price)
  if(price<=0) #make sure price is valid
     raise ArgumentError.new("Price cannot be equal to or less than 0")
  end
   @price = price
  if(isbn.length <1) #make sure isbn is valid
     raise ArgumentError.new("ISBN cannot be empty")
  end
   @isbn = isbn
 end
 def price_as_string 
   string = "$#{'%.2f'%@price}" #set price string to begin with a dollar sign and have 2 places of decimal precision
   return string
 end
 
end
