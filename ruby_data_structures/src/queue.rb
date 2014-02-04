class Queue

  attr_accessor :length, :storage

  def initialize
    @length = 0
    @storage = []
  end

  def enqueue value
    @storage << value
    @length += 1
  end

  def dequeue
    unless @length <= 0
      @length -= 1
      @result = @storage
      @storage = @storage[1..-1]
      @result[0]
    end
  end
end