# Define a class BookInStock which represents a book with an isbn number, 
# isbn, and price of the book as a floating-point number, price, as 
# attributes. The constructor should accept the ISBN number (a string) as the 
# first argument and price as second argument, and should raise ArgumentError 
# (one of Ruby's built-in exception types) if the ISBN number is the empty 
# string or if the price is less than or equal to zero.

# Include the proper getters and setters for these attributes. Include a method 
# price_as_string that returns the price of the book with a leading dollar 
# sign and trailing zeros, that is, a price of 20 should display as "$20.00" 
# and a price of 33.8 should display as "$33.80".
class BookInStock
    def initialize(isbn, price)
        # is isbn empty?
        # raise ArgumentError.new("isbn not valid") unless !isbn.empty?
        @isbn = isbn
        # is price <= 0 ?
        # raise ArgumentError unless price > 0
        @price = price
    end
    # setters and getters
    def isbn=(isbn)
        @isbn = isbn
    end
    def isbn
        @isbn
    end
    def price=(price)
        @price = price
    end
    def price
        @price
    end
    def price_as_string
        pstring = "$#{format("%.2f", @price)}"
        return pstring
    end
end

book = BookInStock.new("1234", 10.3)
puts book.price_as_string

puts "These next ones will cause exceptions with isbn"
book2 = BookInStock.new("", 1.2)
puts "excpetion with price" 
book3 = BookInStock.new("4321", -1.2)


