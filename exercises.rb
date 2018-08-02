module Exercises
  extend self
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
    rand(10.00..100.00).round(2)
  end

  # Convert uppercase to lowercase and lowercase to uppercase
  #
  # @param [String] word to convert
  # @return [String] Converted word.
  def swapcase(word)
    raise ArgumentError unless word.is_a?(String)
    word.to_s.chars.map { |w| w.downcase! ? w : w.upcase }.join
  end
end