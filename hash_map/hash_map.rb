class HashMap
  def initialize
    @load_factor = 0.75
    @capacity = 16
    @buckets = Array.new(@capacity) { [] }
    @size = 0
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number + hash_code + char.ord }

    hash_code
  end

  def set(key, value)
    #if key exists, then old value is overwritten/updated
    return nil if key.nil?

    index = hash(key) % @capacity
    raise IndexError if index.negative? || index >= @buckets.length

    bucket = @buckets[index]
    bucket.each do |pair|
      if pair[0] == key
        pair[1] = value
        return
      end
    end
  
    bucket << [key, value]
    @size += 1
  end

  def get(key)
    #returns value assigned to this key
    #if key not found, return nil
    return nil if key.nil?

    index = hash(key) % @capacity
    raise IndexError if index.negative? || index >= @buckets.length

    bucket = @buckets[index]
    bucket.each do |pair|
      return pair[1] if pair[0] == key
    end
  
    nil
  end

  def has?(key)
    #if key is in hash map, return true
    #otherwise, return false
    return false if key.nil?

    index = hash(key) % @capacity
    bucket = @buckets[index]
  
    bucket.any? { |pair| pair[0] == key }
  end

  def remove(key)
    #if key is in hash map, remove entry with key and return deleted entry's value
    #if key is not in hash map, return nil
    return nil if key.nil?

    index = hash(key) % @capacity
    raise IndexError if index.negative? || index >= @buckets.length

    bucket = @buckets[index]
    bucket.each_with_index do |pair, i|
      if pair[0] == key
        bucket.delete_at(i)
        @size -= 1
        return pair[1] #deleted value
      end
    end
  
    nil
  end

  def length
    #return number of keys stored in hashmap
    @size
  end

  def clear
    #remove all entries in hash map
    @buckets = Array.new(@capacity) { [] }
  @size = 0
  end

  def keys
    #return array containing all keys inside hashmap
    @buckets.flat_map { |bucket| bucket.map { |pair| pair[0] } }
  end

  def values
    #returns array containing all values
    @buckets.flat_map { |bucket| bucket.map { |pair| pair[1] } }
  end

  def entries
    #returns array containing key, value pair
    #example: [[first_key, first_value], [second_key, second_value]]
    @buckets.flat_map { |bucket| bucket.dup }
  end
end