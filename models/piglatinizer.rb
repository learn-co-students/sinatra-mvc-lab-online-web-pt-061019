class PigLatinizer

  def latinize(word)
    #word beginning with vowel
    if !consonant?(word[0])
      word = word + "w"
      #start with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
      #start with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
      #start with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize(sentence)
    sentence.split.collect { |word| latinize(word) }.join(" ")
  end

end
