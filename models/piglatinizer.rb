require_relative '../config/environment'

class PigLatinizer 
  attr_reader :message

  def piglatinize(message)
    words = message.split(" ")
    translated = words.map {|word| piglatinize_word(word)}
    translated.join(" ")
  end

  def piglatinize_word(word)   
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"] 
    first_letter = word[0]
    if vowels.include?(first_letter)
      "#{word}way"
    else
      consonants = []
      consonants << word[0]

      if !vowels.include?(word[1])
        consonants << word[1] 
        if !vowels.include?(word[2])
          consonants << word[2]
        end
      end
      "#{word[consonants.length..-1]}#{consonants.join}ay"
    end
  end
end