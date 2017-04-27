require_relative 'array_list.rb'
require_relative 'linked_list.rb'

class Lotto
  def initialize
    @ticket = ArrayList.new
    while @ticket.size < 5
      auto_num = rand(55) + 1
      if !@ticket.include?(auto_num)
        @ticket.add(auto_num)
      end
    end
  end

  def display_ticket
    puts @ticket
  end
end

lotto_sim = Lotto.new

puts "Your ticket is......"
lotto_sim.display_ticket
