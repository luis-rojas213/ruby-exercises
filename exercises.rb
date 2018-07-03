class Exercises
  def long_word(*words)
    max_length = ''

    words.each do |word|
      max_length = word if word.size > max_length.size
    end

    max_length
  end

  def random_number
    sprintf('%.2f', rand(10.00..100.00))
  end

  def swapcase(word)
    word_swapcase = ''

    word.each_char do |w|
      case
      when /[a-z]/.match(w)
        word_swapcase += w.upcase
      when /[A-Z]/.match(w)
        word_swapcase += w.downcase
      else
        word_swapcase += w
      end
    end

    word_swapcase
  end
end