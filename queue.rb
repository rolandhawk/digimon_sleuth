class Queue
  
  def initialize
    @data = []
  end

  def enqueue(data)
    @data << data
  end

  def dequeue
    @data.shift
  end

  def peek
    @data.first
  end

  def count
    @data.count
  end
end