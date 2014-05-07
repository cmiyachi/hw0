#  Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements. For an empty array it should return zero.
def sum(array)
  return 0 if array.empty?
  sum = 0
  array.each { |x| sum += x }
  puts " The sum is " + sum.to_s
  return sum
end
# Define a method max_2_sum which takes an array of integers as an 
# argument and returns the sum of its two largest elements. For an empty array 
# it should return zero. For an array with just one element, 
# it should return that element.
def max_2_sum(array)
    return 0 if array.empty?
    return array[0] if array.length == 1
    
    array.sort!
    sum = 0
    # sum the highest numbers
    sum = array[array.length-1]+array[array.length-2]
    return sum

end

# third program - do any of the elements sum to "n"
def sum_2_n?(arrayOfNumbers, n)
  len = arrayOfNumbers.length
  if (len == 0)
    return false
  elsif len == 1
    return false
  else
    i = 0
    j = 0
    while i < len
      while j < len
        if i != j
          if arrayOfNumbers[i]+arrayOfNumbers[j] == n
            # puts i.to_s + " " + j.to_s + " " + n.to_s
            return true
          end
        end
        j += 1
      end
      i += 1
      j = 0
    end
  end
  return false
end

my_array = [1,2,3,4,5,6,7,8,9,10]
sum(my_array)
empty_array = Array.new
sum(empty_array)

max_2_sum(my_array)
max_2_sum(empty_array)

puts sum_2_n?(my_array, 19)
puts sum_2_n?(empty_array, 19)
puts sum_2_n?(my_array, 50)

test_array = [1,2,3,4,5]
puts sum_2_n?(test_array, 5)


