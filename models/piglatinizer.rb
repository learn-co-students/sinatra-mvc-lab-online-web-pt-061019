class PigLatinizer

  def piglatinize(user_phrase)
    a = user_phrase.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
  end
  
  def piglatinize_word(word)
    first_letter = word[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      begins_with_vowel = word + "way"
    else
      consonants = []
      consonants << word[0]
        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
          consonants << word[1]
          if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
          end
        end
      begins_with_consonant = word[consonants.length..-1] + consonants.join + "ay"
    end
  end
end