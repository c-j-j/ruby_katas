require_relative 'karate-chop'
require 'minitest/autorun'

class TestHipster < MiniTest::Unit::TestCase

  def test_chop_with_iteration
    assert_equal(-1, chop_with_iteration(3, []))
    assert_equal(-1, chop_with_iteration(3, [1]))
    assert_equal(0, chop_with_iteration(1, [1]))
    assert_equal(0, chop_with_iteration(1, [1, 3, 5]))
    assert_equal(1, chop_with_iteration(3, [1, 3, 5]))
    assert_equal(2, chop_with_iteration(5, [1, 3, 5]))
    assert_equal(-1, chop_with_iteration(0, [1, 3, 5]))
    assert_equal(-1, chop_with_iteration(2, [1, 3, 5]))
    assert_equal(-1, chop_with_iteration(4, [1, 3, 5]))
    assert_equal(-1, chop_with_iteration(6, [1, 3, 5]))
    assert_equal(0, chop_with_iteration(1, [1, 3, 5, 7]))
    assert_equal(1, chop_with_iteration(3, [1, 3, 5, 7]))
    assert_equal(2, chop_with_iteration(5, [1, 3, 5, 7]))
    assert_equal(3, chop_with_iteration(7, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_iteration(0, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_iteration(2, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_iteration(4, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_iteration(6, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_iteration(8, [1, 3, 5, 7]))
  end

  def test_chop_with_recursion
    assert_equal(-1, chop_with_recursion(3, []))
    assert_equal(-1, chop_with_recursion(3, [1]))
    assert_equal(0, chop_with_recursion(1, [1]))
    assert_equal(0, chop_with_recursion(1, [1, 3, 5]))
    assert_equal(1, chop_with_recursion(3, [1, 3, 5]))
    assert_equal(2, chop_with_recursion(5, [1, 3, 5]))
    assert_equal(-1, chop_with_recursion(0, [1, 3, 5]))
    assert_equal(-1, chop_with_recursion(2, [1, 3, 5]))
    assert_equal(-1, chop_with_recursion(4, [1, 3, 5]))
    assert_equal(-1, chop_with_recursion(6, [1, 3, 5]))
    assert_equal(0, chop_with_recursion(1, [1, 3, 5, 7]))
    assert_equal(1, chop_with_recursion(3, [1, 3, 5, 7]))
    assert_equal(2, chop_with_recursion(5, [1, 3, 5, 7]))
    assert_equal(3, chop_with_recursion(7, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_recursion(0, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_recursion(2, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_recursion(4, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_recursion(6, [1, 3, 5, 7]))
    assert_equal(-1, chop_with_recursion(8, [1, 3, 5, 7]))
  end


end