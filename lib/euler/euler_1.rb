module Euler

  # If we list all the natural numbers below 10 that are multiples of 3 or 5, 
  # we get 3, 5, 6 and 9. The sum of these multiples is 23.

  # Find the sum of all the multiples of 3 or 5 below 1000.
  def self.one
    numbers_1_through_1000.inject( 0 ) do |sum, number|
      add_if_multiple_of_3_or_5 sum, number
    end
  end

  private

  def self.numbers_1_through_1000
    1...1000
  end

  def self.add_if_multiple_of_3_or_5( sum, number )
    multiple_of_3_or_5?( number ) ? sum + number : sum
  end

  def self.multiple_of_3_or_5?( number )
    number % 3 == 0 or number % 5 == 0
  end

end