require_relative 'max'
class Mean < Max
  def initialize(initial_stack = nil)
    @mean = 0
    super
  end

  def push(value)
    @mean += value
    super
  end

  def pop
    value = super
    @mean -= value
    value
  end

  def mean
    @mean.to_f / @stack.size
  end
end
