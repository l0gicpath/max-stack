require 'test_helper'
require 'max'

class MaxTest < Test::Unit::TestCase
  def test_initialize_with_a_stack
    initial_stack = [3, 4, 8, 1]
    max = Max.new(initial_stack)
    assert_equal max.stack.size, initial_stack.size
  end

  def test_initialize
    max = Max.new
    assert_equal max.stack.size, 0
  end

  def test_return_nil_on_empty_stack
    max = Max.new
    assert_nil max.pop
  end

  def test_pop
    initial_stack = [1, 3, 2]
    max = Max.new(initial_stack)
    assert_equal max.pop, 2 
    assert_equal max.stack.size, 2
  end

  def test_push
    max = Max.new
    max.push 3
    max.push 5
    assert_equal max.stack.size, 2
    assert_equal max.pop, 5
    assert_equal max.pop, 3
    assert_nil max.pop
  end

  def test_push_alias
    max = Max.new
    max << 3
    max << 5
    assert_equal max.stack.size, 2
  end

  def test_max
    max = Max.new([3, 19, 2, 3, 10, 50])
    assert_equal max.max, 50
    max.pop
    assert_equal max.max, 19
    max.pop
    assert_equal max.max, 19
    max.pop; max.pop; max.pop
    assert_equal max.max, 3
    max.push 1
    assert_equal max.max, 3
    max.push 5
    assert_equal max.max, 5
  end
end
