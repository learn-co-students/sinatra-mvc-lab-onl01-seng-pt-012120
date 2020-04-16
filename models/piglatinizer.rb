require 'pry'

class PigLatinizer
  attr_accessor :piglatinized_phrase

  def piglatinize(word) 
    word_array = word.split(" ")
    word_array.collect {|w| piglatinize_word(w)}.join(" ")
  end

  def piglatinize_word(word)
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front_end = word.slice(0..vowel_index-1)
      back_end = word.slice(vowel_index..word.length-1)
      back_end + front_end + "ay"
    end
  end
  
  
end 
