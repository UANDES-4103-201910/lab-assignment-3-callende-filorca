def find_frequency(sentence, word)
  x=0
  sentence=sentence.split(/[ ,.]/)
  for wordOS in sentence 
    if wordOS.downcase == word.downcase then
      x = x+1
    end
  end
      return x
end
puts find_frequency("Do or do do do  DO Do dO not... there is no try.", "not")
