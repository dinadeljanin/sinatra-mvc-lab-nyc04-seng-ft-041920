class PigLatinizer
  attr_reader :user_phrase

  def piglatinize(str)
    phrase = str.split(' ')
    phrase.collect do |word|
      if word.downcase.start_with?(/[aeoui]/)
        "#{word}way"
      else
        idx = word.index(/[aeiou]/)
        "#{word[idx, word.size] + word[0, idx]}ay"
      end
    end.join(' ')
  end

end
