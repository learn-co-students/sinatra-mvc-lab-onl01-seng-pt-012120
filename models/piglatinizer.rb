class PigLatinizer

  def piglatinize(word)
      array_word = word.split(" ")
      if array_word.size > 1
        piglatinize_phrase(word)
      else
        if word.downcase.index(/[aeiou]/) == 0
            word + "way"
        else
          vowel = word.downcase.index(/[aeiou]/)
          mid = word.slice!(0..vowel-1)
          pigitized = word + mid + "ay"
        end
      end
    end
    
    def piglatinize_phrase(word)
      array_word = word.split(" ")
      complete_sentence = []
      array_word.each do |w|
        complete_sentence << piglatinize(w)
      end
      complete_sentence.join(" ")
    end
  
end
