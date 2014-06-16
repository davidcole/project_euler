module Euler

  # A palindromic number reads the same both ways. The largest palindrome made 
  # from the product of two 2-digit numbers is 9009 = 91 × 99.

  # Find the largest palindrome made from the product of two 3-digit numbers.

  def self.four
    limit = 999
    max_palindrome = 0
    ( 1..limit ).each do |first|
      ( first..limit ).each do |second|
        number = first * second
        max_palindrome = number if palindrome? number and number > max_palindrome
      end
    end
    max_palindrome
  end

  private

  def self.palindrome?( number )
    number.to_s == number.to_s.reverse
  end 

end