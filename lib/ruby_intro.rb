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
  if (arr.length ==0)
    return 0
  end
  if (arr.length == 1)
    return arr[0]
  end
  if (arr.length >1)
    arr.sort!.reverse!
    sum = arr[1]+arr[0]
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
    k = i+1 #ensure a number isn't summed with itself
      for k in k...arr.length
      sum = arr[i] + arr[k]
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
