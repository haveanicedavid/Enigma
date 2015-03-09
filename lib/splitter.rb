class Splitter  # Individual methods return as a string, input_split returns an array

  def initialize(input)
    @input = input
    @input_split = []
  end

  def split
    @input.chars.each_slice(4) {|block| @input_split << block}
    @input_split
  end

  # def a
  #   arr = @input_split.map {|n| n[0]}
  #   arr.join
  # end
  #
  # def b
  #   arr = @input_split.map {|n| n[1]}
  #   arr.join
  # end
  #
  # def c
  #   arr = @input_split.map {|n| n[2]}
  #   arr.join
  # end
  #
  # def d
  #   arr = @input_split.map {|n| n[3]}
  #   arr.join
  # end

  def arr
    i = 0
    arr_total = []
    4.times do
      arr = @input_split.map { |n| n[i] }
      arr_total << arr.join
      i += 1
    end
    arr_total
  end

end
#
# t = Splitter.new("abcdabcdabcdabacdasdfaa")
# t.split
# print t.arr
