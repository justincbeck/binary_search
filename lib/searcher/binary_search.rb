module Searcher
  class BinarySearch
    def initialize(output)
      @output = output
    end

    def search(int, array_of_ints)
      @output.puts "Searching for: #{int}"
      @output.puts "Array Size: #{array_of_ints.length}"
      @output.puts
      
      mid_index = array_of_ints.length / 2
      comparison = int <=> array_of_ints[mid_index]
      
      if comparison.nil?
        @output.puts "Not found!"
      elsif comparison < 0
        self.search(int, array_of_ints.take(mid_index))
      elsif comparison > 0
        self.search(int, array_of_ints.reverse.take(mid_index).reverse)
      else
        @output.puts "It matched!"
      end
    end
  end
end