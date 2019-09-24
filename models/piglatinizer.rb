require 'pry'

class PigLatinizer

  def piglatinize(words)
    #if a string starts with consonants
    #split a string before the first vowel
    #then add the consonants at the end
    #and add "ay" after that
    #this part (below) isn't working
    piglatinized_array = []
    lots_of_words = words.split
    lots_of_words.each do |word|
      if word.downcase.start_with?('a','e','i','o','u')
        piglatinized_array << "#{word}way"
      else
        word_array = word.split(/([aeiou].*)/)
        piglatinized_array << "#{word_array[1]}#{word_array[0]}ay"
      end
    end
    if piglatinized_array.length > 1
      piglatinized_array.join(" ")
    else
      piglatinized_array[0]
    end
  end

end
