class Exercises
  def long_word(*words)
    max_length = ''

    words.each do |word|
      max_length = word if word.size > max_length.size
    end

    max_length
  end

  def random_number
    rand(10.00..100.00).round(2)
  end

  def swapcase(word)
    raise ArgumentError unless word.is_a?(String)
    word.to_s.chars.map { |w| w.downcase! ? w : w.upcase }.join
  end
end