class PigLatinizer
  attr_reader :text

  def piglatinize(text)

    if text.include?(" ")
      split_text(text)
    elsif ["a", "e", "i", "o", "u"].include?(text[0].downcase)
        text + "way"
    else
      parts = text.split(/([aeiou].*)/) 
      parts[1]+parts[0]+"ay" # "ello" + "h" + "ay"
    end
  end

  def split_text(text)
    words_array = text.split(" ")
    words_array.map do |word|
      piglatinize(word)
    end.join(" ") 
  end
end