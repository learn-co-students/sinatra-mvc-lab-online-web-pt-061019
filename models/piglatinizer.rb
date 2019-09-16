class PigLatinizer

  # attr_reader :string
 
  # def initialize(string)
  #   @string = string.downcase
  # end
 

  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
    
  end

  def piglatinize_word(word)
    first_letter = word[0].downcase
    # piglatinize word that starts with a vowel
   
    # if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"

    if ["a", "e", "i", "o", "u"].include?(first_letter)
        # "#{word}way"
      latinized_word = word + "way"
    # piglatinize word that starts with a consonant   
    else
      consonants = []
      consonants << word[0]
        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
          consonants << word[1]
          if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
          end
        end
      # "#{word[consonants.length..-1] + consonants.join + "ay"}"
      latinized_word = word[consonants.length..-1] + consonants.join + "ay"
    end
  end

  # string ='big apple'
  # piglatinize(string)

  #'flatiron school' = "atironflay oolschay"
  #'noodle soup' =  "oodlenay oupsay"
  #'big apple' = "igbay appleway"
  #https://medium.com/@c.emily.collins/translating-to-pig-latin-with-ruby-f4e8e91d927e


end