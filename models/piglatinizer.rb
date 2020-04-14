class PigLatinizer

  attr_accessor :user_phrase

  def oinkway(word)
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      first_vowel_index = word.index(/[aeiou]/)
      front = word.slice!(0..first_vowel_index-1)
      word + front + "ay"
    end
  end

  def piglatinize(phrase)
    word_array = phrase.to_s.split(' ')
    @user_phrase = word_array.collect{|word| oinkway(word)}.join(" ")
  end





end
