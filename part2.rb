# Define a method hello(name) that takes a string representing a 
# name and returns the string "Hello, " concatenated with the name.
def hello(name)
    return "Hello, "+name
end
# Define a method starts_with_consonant?(s) that takes a string and returns 
# true if it starts with a consonant and false otherwise. (For our purposes, 
# a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works 
# for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
    s.downcase!
    if (s =~ /\A[b-df-hj-np-tv-z]/) == 0 
        return true
    else
        return false
    end
end
# Define a method binary_multiple_of_4?(s) that takes a string and 
# returns true if the string represents a binary number that is a multiple of 
# 4. NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
    # check that string only contains 0 and 1s
    return false if !((s =~ /^[01]+$/) == 0)
    # convert to number
    num = s.to_i(2)
    # check if mod 4 returns 0
    return num % 4 == 0
end
puts hello("Chris")
puts "true " if starts_with_consonant?("chris")
puts "true " if starts_with_consonant?("CHRIS")
puts "false" if !starts_with_consonant?("isha")
puts "Unix false" if !starts_with_consonant?("Unix")
puts "#foo false" if !starts_with_consonant?("#foo")

puts "1011".to_i(2).to_s
puts "OK" if binary_multiple_of_4?("1100")

puts "OK" if !binary_multiple_of_4?("Chris")