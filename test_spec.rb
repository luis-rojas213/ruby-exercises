require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/exercises')

describe Exercises, "#long_word" do
  let(:exercise) { Exercises.new }
  subject { exercise.long_word(*params) }

  context "when parameters are string" do
    let(:params) { ["hola","chau","probando"] }
    it { should == "probando" }
  end

  context "when parameters are equal in length" do
    let(:params) { ["lunes","martes","jueves"] }
    it { should == "martes" }
  end

  context 'when parameters are not string' do
    let(:params) { [1234,12345,20000,1234] }
    it { should == "12345" }
  end

  context 'when parameter is an empty string' do
    let(:params) { "" }
    it { should == "" }
  end

  context 'when parameter is a null array' do
    let(:params) { [nil] }
    it { should == "" }
  end

  context "when parameters is very long " do
    let(:params) { ["martes"*100000,("string largo"*100000)] }
    it { should == "string largo"*100000 }
  end

  context 'when parameters are not send' do
    subject { exercise.long_word }
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
  let(:exercise) { Exercises.new }
  subject { exercise.swapcase(params) }

  context "when parameters are string" do
    let(:params) { 'ABCdefGhI' }
    it { should eq "abcDEFgHi" }
  end

  context "when parameter not string" do
    let(:params) { 12345678 }
    it { expect { should }.to raise_error(ArgumentError) }
  end

  context "when parameters is very long " do
    let(:params) { "ABCDEFGHIJKLMNOPQRSTUVWXYZ"*100000 }
    it { should == "abcdefghijklmnopqrstuvwxyz"*100000 }
  end

  context "when wrong parameters" do
    let(:params) { ["abcdef"] }
    it { expect { should }.to raise_error(ArgumentError) }
    it { expect { exercise.swapcase("abcdef","ABCDE") }.to raise_error(ArgumentError) }
    it { expect { exercise.swapcase }.to raise_error(ArgumentError) }
  end
end