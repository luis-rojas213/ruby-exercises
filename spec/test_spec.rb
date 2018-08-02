require 'spec_helper'
require './exercises'

describe Exercises, '#long_word' do
  subject { Exercises.long_word(*params) }

  context 'when parameters are string' do
    let(:params) { ['hola','chau','probando'] }
    it { is_expected.to eq('probando') }
  end

  context 'when parameters are equal in length' do
    let(:params) { ['lunes','martes','jueves'] }
    it { is_expected.to eq('martes') }
  end

  context 'when parameters are not string' do
    let(:params) { [1234,12345,20000,1234] }
    it { is_expected.to eq('12345') }
  end

  context 'when parameter is an empty string' do
    let(:params) { '' }
    it { is_expected.to eq('') }
  end

  context 'when parameter is a null array' do
    let(:params) { [nil] }
    it { is_expected.to eq('') }
  end

  context 'when parameters are not send' do
    subject { Exercises.long_word }
    it { should be_nil }
  end
end

describe Exercises, '#random_number' do
  subject { Exercises.random_number }
  it { should be_between(10, 100) }
  it { should be_kind_of(Float) }
  it { should eq subject.round(2) }
end

describe Exercises, '#swapcase' do
  subject { Exercises.swapcase(params) }

  context 'when parameters are string' do
    let(:params) { 'ABCdefGhI' }
    it { is_expected.to eq('abcDEFgHi') }
  end

  context 'when parameter not string' do
    let(:params) { 12345678 }
    it { expect { should }.to raise_error(ArgumentError) }
  end

  context 'when wrong parameters' do
    let(:params) { ['abcdef'] }
    it { expect { should }.to raise_error(ArgumentError) }
    it { expect { Exercises.swapcase('abcdef','ABCDE') }.to raise_error(ArgumentError) }
    it { expect { Exercises.swapcase }.to raise_error(ArgumentError) }
  end
end