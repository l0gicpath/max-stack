require "test_helper"
require "mean"

class MeanTest < Test::Unit::TestCase

  def test_initialize_with_a_stack
    initial_stack = [3, 4, 8, 1]
    mean = Mean.new(initial_stack)
    assert_equal mean.stack.size, initial_stack.size
  end

  def test_initialize
    mean = Mean.new
    assert_equal mean.stack.size, 0
  end

  def test_return_nil_on_empty_stack
    mean = Mean.new
    assert_nil mean.pop
  end

  def test_pop
    initial_stack = [1, 3, 2]
    mean = Mean.new(initial_stack)
    assert_equal mean.pop, 2 
    assert_equal mean.stack.size, 2
  end

  def test_push
    mean = Mean.new
    mean.push 3
    mean.push 5
    assert_equal mean.stack.size, 2
    assert_equal mean.pop, 5
    assert_equal mean.pop, 3
    assert_nil mean.pop
  end

  def test_push_alias
    mean = Mean.new
    mean << 3
    mean << 5
    assert_equal mean.stack.size, 2
  end

  def test_mean
    mean = Mean.new([1, 2])
    expected_mean = (1 + 2) / 2.to_f
    assert_equal mean.mean, expected_mean

    mean.push 3
    expected_mean = (1 + 2 + 3) / 3.to_f
    assert_equal mean.mean, expected_mean

    mean.pop
    expected_mean = (1 + 2) / 2.to_f
    assert_equal mean.mean, expected_mean
  end

end
