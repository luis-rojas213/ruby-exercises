require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/exercises')

exercise = Exercises.new

describe Exercises, "#long_word" do
  context "when parameter is string" do
    it { exercise.long_word("hola","chau","probando") }
    it { exercise.long_word("corta","larga","mismo") }
  end

  context 'when parameter not string' do
    it { exercise.long_word(123,1234,12345) }
    it { exercise.long_word(12.3,-1234,12345) }
  end
end

describe Exercises, "#random_number" do
  it { exercise.random_number }
end

describe Exercises, "#swapcase" do
  context "when parameter is string" do
    it { exercise.swapcase('abcdefghi') }
    it { exercise.swapcase('ABCDEFGHI') }
    it { exercise.swapcase('ABCdefGhI') }
  end

  context "when parameter not string" do
    it { exercise.swapcase(123456) }
    it { exercise.swapcase(-123456) }
    it { exercise.swapcase(123456.7) }
  end
end