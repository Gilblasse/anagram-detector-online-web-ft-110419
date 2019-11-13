class Anagram
  attr_accessor :word
  
  def initialize(string)
    @word = string.split('')
  end
  
  def match(array)
		array.select do |compared_word|
			@word.all?{|letter| compared_word.include?(letter)}
		end
		.select {|word| word.size == @word.size}
	end
end