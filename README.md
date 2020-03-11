# Ruby on Rails - Ruby & Ruby on Rails Basics - Object-oriented Programming - Project

For today's challenge we are going to act as librarians that are trying to keep track of our books.

## Setup

First, we need to clone the repository and then run irb in the terminal.

## Instructions

1. Create a `Book` class (in a file called `book.rb`) so that we can track how many copies of a book we have and whether we have personally finished reading it or not.

   - The `Book` class should have `title`, `author`, `finished`, and `count` instance variables.
   - You should be able to pass in the `title` and `author` values when you instantiate a book, but only those two attributes.
     - Example: `Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz")`.
   - `finished` is a boolean and should default to `false`.
   - `count` is an integer and should default to `3`.
   - All of the instance variables should be set in the initialize method.

2. Test out your book class using irb.
3. Use `attr_` macros to provide access to the instance variables.

   - `title` and `author` should only be readable.
   - `finished` should only be writeable.
   - `count` should be readable and writeable.

4. Create `AudioBook` (`audio_book.rb`) and `ComicBook` (`comic_book.rb`) classes that inherit from `Book`.

   - Add a `listen` method to `AudioBook` that sets the `finished` value to `true`.
   - Add a `read` method to `ComicBook` that sets the `finished` value to `true`

5. Add a `recommended_books` class method to the `Book` class that creates and returns an array of recommended books

   - Add the following code inside of the `recommended_books` class method:

```ruby
  [
    Book.new("The Well-Grounded Rubyist", "David A. Black"),
    Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
    Book.new("Effective Testing with RSpec 3", "Myron Marston"),
  ]
```

   - Test out the `recommended_books` class method

6. Create a `Lendable` module with a `lend` method that decrements the current `count` by one.

   - Prevent the `count` from going below `0` in the `lend` method
   - Mixin the module into `Book`
   - Test that you can lend a book by verifying the count has reduced
