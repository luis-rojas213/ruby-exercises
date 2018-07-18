require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/exercises')

describe Exercises, "#long_word" do
  context "when parameters are string" do
  	subject { Exercises.new.long_word("hola","chau","probando") }
    it { should be_kind_of(String) }
  end

  context 'when parameters are not string' do
    subject { Exercises.new.long_word(123,456,12345) }
    it { should be_kind_of(String) }
  end

  context 'when parameters are not send' do
    subject { Exercises.new.long_word }
    it { should be_nil }
  end
end

describe "#random_number" do
  subject { Exercises.new.random_number }
  it { should be_between(10, 100) }
  it { should be_kind_of(Float) }
  it { should eq subject.round(2) }
end

describe Exercises, "#swapcase" do
  context "when parameters are string" do
  	subject { Exercises.new.swapcase('ABCdefGhI') }
    it { should be_kind_of(String) }
  end

  context "when parameter not string" do
    subject { Exercises.new.swapcase(12345678) }
    it { should be_kind_of(String) }
  end

  context "when parameters are not send" do
    it { expect { Exercises.new.swapcase }.to raise_error(ArgumentError) }
  end
end