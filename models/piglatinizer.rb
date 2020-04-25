class PigLatinizer
  
  def piglatinize(w)
    text = w.split(" ")
    i = []
    text.each do |x|
      if x.chars.first.downcase.scan(/[aeiou]/).count == 1
        a = [x, 'way'].join
        i << a
      else
        z = x.chars
        a = []
        until z.first.scan(/[aeiou]/).count == 1 do
         a << z.first
         z.shift
        end
        a << "ay"
        b = a.join
        z << b
        i << z.join
      end
    end
    i.join(" ")
  end
        
        
  
end
    
  
  