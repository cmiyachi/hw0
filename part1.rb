#  first program - sum an array of elements
def sum(arrayOfNumbers)
  this_sum = 0
  arrayOfNumbers.each  do |n|
    this_sum = this_sum + n
  end
  puts " The sum is " + this_sum.to_s
  return this_sum
end
# second program - sum the two largest elements
def max_2_sum(arrayOfNumbers)
  this_sum = 0
  arrayOfNumbers.sort!
  len = arrayOfNumbers.length
  if (len == 0)
    puts "sum is 0"
  elsif len == 1
    puts "Sum is " + arrayOfNumbers[0].to_s
  else
    # sum the highest numbers
    this_sum = arrayOfNumbers[len-1]+arrayOfNumbers[len-2]
    puts "Sum of two largest numbers " + this_sum.to_s
  end
  return this_sum
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
            puts i.to_s + " " + j.to_s + " " + n.to_s
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


