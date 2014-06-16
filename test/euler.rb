#!/usr/bin/env ruby -w

$:.unshift File.join( File.dirname( __FILE__ ), '..', 'lib' )

require 'test/unit'
require 'euler'

class EulerTest < Test::Unit::TestCase

  def test_one
    assert_equal 233168,    Euler.one
  end

  def test_two
    assert_equal 4613732,   Euler.two
  end

  def test_three
    assert_equal 6857,      Euler.three
  end

  def test_four
    assert_equal 906609,    Euler.four
  end

  def test_five
    assert_equal 232792560, Euler.five
  end

end