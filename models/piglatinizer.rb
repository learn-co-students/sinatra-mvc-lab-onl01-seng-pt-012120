class PigLatinizer

    def translate_word(text)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    letters = text.split("")
  
    if vowels.include?(letters[0])
      letters << "way"
      letters.join('')
    else
      prefix = text[0, %w(a e i o u A E I O U).map {|v| "#{text}aeiouAEIOU".index(v)}.min]
        "#{text[prefix.length..-1]}#{prefix}ay"
    end
  end
  
  def piglatinize(text)
    words = text.split(" ")
    words.map do |w|
      translate_word(w)
    end.join(' ')
  end
end