

class PigLatinizer
def to_pig_latin(word) #pig latinizes a single word
if word.downcase.index(/[aeiou]/) == 0
  word + "way"
else
  vowel_index = word.index(/[aeiou]/)
  front_end = word.slice!(0..vowel_index-1)
  word + front_end +"ay"
end
end
def piglatinize(sentence)
  sentence.gsub('.','').split(' ').collect do |word|
  to_pig_latin(word)
  end.compact.join(' ')
end
end



# 1)transferring the initial consonant or consonant blend (for example, "ch" or "str") 
# of each word to the end of the word along with the syllable "-ay"
#2)If the word begins with a vowel sound, then we add the sound of "way" 