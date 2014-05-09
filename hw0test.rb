require "./part1.rb"
require './part2.rb'
require './part3.rb'

my_array = [1,2,3,4,5,6,7,8,9,10]
puts sum(my_array)
empty_array = Array.new
puts sum(empty_array)

puts max_2_sum(my_array)
puts max_2_sum(empty_array)

puts sum_to_n?(my_array, 19)
puts sum_to_n?(empty_array, 19)
puts sum_to_n?(my_array, 50)

test_array = [1,2,3,4,5]
puts sum_to_n?(test_array, 5)

puts hello("Chris")
puts "true " if starts_with_consonant?("chris")
puts "true " if starts_with_consonant?("CHRIS")
puts "false" if !starts_with_consonant?("isha")
puts "Unix false" if !starts_with_consonant?("Unix")
puts "#foo false" if !starts_with_consonant?("#foo")

puts "1011".to_i(2).to_s
puts "OK" if binary_multiple_of_4?("1100")

puts "OK" if !binary_multiple_of_4?("Chris")

book1 = BookInStock.new("1234", 10.3)
puts book1.price_as_string
# book2 = BookInStock.new('', 0.0)
book3 = BookInStock.new("1234", -10.10)