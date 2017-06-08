class Max
  attr_reader :stack

  def initialize(initial_stack = nil)
    @stack = []
    # Will hold our current highest value
    @max_stack = []

    initialize_stack_with(initial_stack) if initial_stack
  end

  def push(value)
    raise ArgumentError.new("Pushing a signed value") if value < 0

    @stack << value
    @max_stack << value if value >= max
  end
  alias_method :<<, :push

  def pop
    value = @stack.pop
    @max_stack.pop if value == max
    value
  end

  def max
    @max_stack[-1] || 0
  end

  def initialize_stack_with(initial_stack_values)
    initial_stack_values.each { |value| push(value) }
  end
  private :initialize_stack_with
end
