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
    @mean -= value unless value.nil?
    value
  end

  def mean
    return 0.0 unless @stack.size > 0
    @mean.to_f / @stack.size
  end
end
