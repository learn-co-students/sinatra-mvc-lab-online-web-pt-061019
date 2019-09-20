class Piglatinizer
  attr_reader :text
 
  def initialize(text)
    @text = text.downcase
  end

  def original_phrase
    original = input("Please enter a phrase: ").strip
    words = text.split(" ")
    new_words = []
    for word in words
      if word[0] == "aeiou"
          new_word = word + "yay"
          new_words.append(new_word)
      else
          vowel_pos = 0
          for letter in word
              if letter != "aeiou"
                  vowel_pos = vowel_pos + 1
              else
                  break
          cons = word[:vowel_pos]
          the_rest = word[vowel_pos:]
          new_word = the_rest + cons + "ay"
          new_words.append(new_word)
          output = " ".join(new_words)
          output
            end
          end
        end
      end
    end
  end

  