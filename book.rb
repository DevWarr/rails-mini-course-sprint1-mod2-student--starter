module Lendable
    def lend
        @count -= 1 if count > 0
        puts "You cannot lend this book any more" if count == 0
    end
end

class Book
    include Lendable
    attr_reader :title, :author
    attr_writer :finished
    attr_accessor :count
    def initialize(title, author)
        @title = title
        @author = author
        @finished = false
        @count = 3
    end

    def recommended_books
        [
            Book.new("The Well-Grounded Rubyist", "David A. Black"),
            Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
            Book.new("Effective Testing with RSpec 3", "Myron Marston")
        ]
    end 
end

class AudioBook < Book
    def initialize(title, author)
        super(title, author)
    end

    def listen
        @finished = true
    end
end

class ComicBook < Book
    def initialize(title, author)
        super(title, author)
    end

    def read
        @finished = true
    end
end