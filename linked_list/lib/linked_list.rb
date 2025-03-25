require_relative 'node'

class LinkedList
  def initialize
    @head = nil
    @length = 0
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end

    @length += 1
  end

  def prepend(value)
    new_node = Node.new(value, @head)
    @head = new_node
    @length +=1 
  end

  def size
    puts @length
  end

  def head
    puts @head ? @head.value : 'nil'
  end

  def tail
    if @head.nil?
      puts 'nil'
    else
      current = @head
      current = current.next_node while current.next_node
      puts current.value
    end
  end

  def at(index)
    return nil if index < 0 || index >= @length

    current = @head
    index.times { current = current.next_node }
    puts current.value
  end

  def pop
    return if @head.nil?

    if @head.next_node.nil?
      @head = nil
    else
      current = @head
      current = current.next_node while current.next_node.next_node
      current.next_node = nil
    end

    @length -= 1
  end

  def contains?(value)
    current = @head

    while current
      return true if current.value == value
      current = current.next_node
    end

    false
  end

  def find(value)
    current = @head
    index = 0

    while current
      return index if current.value == value
      current = current.next_node
      index += 1
    end

    nil
  end

  def to_s
    current = @head
    result = ''

    while current
      result += "( #{current.value} ) -> "
      current = current.next_node
    end

    result += 'nil'
    puts result
  end
end