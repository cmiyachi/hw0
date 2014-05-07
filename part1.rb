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

# Define a method sum_to_n? which takes an array of integers and an 
# additional integer, n, as arguments and returns true if any two distinct 
# elements in the array of integers sum to n. An empty array or single 
# element array should both return false.
def sum_2_n?(array, n)
    return false if array.empty?
    return false if array.length == 1
    i = 0
    j = 0
    while i < array.length
      while j < array.length
        if i != j
          if array[i]+array[j] == n
            # puts i.to_s + " " + j.to_s + " " + n.to_s
            return true
          end
        end
        j += 1
      end
      i += 1
      j = 0
    end
    return false
end

my_array = [1,2,3,4,5,6,7,8,9,10]
puts sum(my_array)
empty_array = Array.new
puts sum(empty_array)

puts max_2_sum(my_array)
puts max_2_sum(empty_array)

puts sum_2_n?(my_array, 19)
puts sum_2_n?(empty_array, 19)
puts sum_2_n?(my_array, 50)

test_array = [1,2,3,4,5]
puts sum_2_n?(test_array, 5)


