# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    #pretend @storage is a native array: fixed size, indexing only (no dot methods)
    #so we have the capacity to store 10 values but size should be zero right now
    #fixed size = fixed capacity. size is how much is in there at the time
    @storage = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    #raise some error if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  def add_in_order(value)
    @size.downto(0) do |i|
      if i == 0 || @storage[i-1] <= value
        @storage[i] = value
        break
      else
        @storage[i] = @storage[i-1]
      end
    end
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    # raise some error if @size == 0
    # @storage[@size] = 0 #probs don't need this
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    return @size
  end

  def max
    #raise some error if @size == 0
    max = @storage[0]
    @size.times do |i|
      max = @storage[i] if @storage[i] > max
    end
    return max
  end

  def remove_all(num)
    shift_count = 0
    @size.times do |i|
      if @storage[i] == num
        shift_count += 1
      else
        @storage[i - shift_count] = @storage[i]
      end
    end
    @size -= shift_count
    return @storage
  end

  def to_s
    str = ""
    @size.times do |i|
      str += @storage[i].to_s + ", "
    end
    return "[#{str[0..-3]}]"
  end
end
