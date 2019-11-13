# Your code goes here!
class Anagram
  attr_accessor :word
  
  def initialize(string)
    @word = string.split('')
  end
  
  def match(array)
		array.select do |compared_word|
			if compared_word.size == @word.size
				 @word.all?{|letter| compared_word.include?(letter)}
			end
		end
	end

end
