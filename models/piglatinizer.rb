class PigLatinizer
  def piglatinize(text)
    text_array = text.split(" ")
    
    latin_array = text_array.map do |word|
      if word[0].downcase == "y"
        first_vowel = word.index(/[aeiou]/)
      else
        first_vowel = word.index(/[aeiouyAEIOUY]/)
      end
      
      if first_vowel == 0 
        word + "way"
      else
        word.slice!(first_vowel..-1) + word + "ay"
      end
    end
    
    latin_array.join(" ")
  end
end