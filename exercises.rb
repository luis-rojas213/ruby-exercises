class Exercises
  # Find a longer word.
  #
  # @param [Array] words the compare length
  # @return [String] Longest word found.
  def long_word(*words)
    words.map(&:to_s).max_by(&:size)
  end

  # Random number between 10.00 and 100.00
  #
  # @return [String] Generated number.
  def random_number
    sprintf('%.2f', rand(10.00..100.00))
  end

  # Convert uppercase to lowercase and lowercase to uppercase
  #
  # @param [String] word to convert
  # @return [String] Converted word.
  def swapcase(word)
    word.to_s.chars.map { |w| w.downcase! ? w.downcase : w.upcase }.join
  end
end