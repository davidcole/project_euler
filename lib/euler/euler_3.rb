module Euler

  # The prime factors of 13195 are 5, 7, 13 and 29.

  # What is the largest prime factor of the number 600851475143?

  def self.three
    prime_factors( 600851475143 ).max
  end

  private

  def self.prime_factors( number )
    number == 1 ? [] : next_prime_factor( number )
  end

  def self.next_prime_factor( number )
    prime_factor = ( 2..number ).detect { |divisor| number % divisor == 0 }
    [ prime_factor ] + prime_factors( number / prime_factor )
  end

end