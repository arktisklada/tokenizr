require 'tokenizr'
require 'minitest/autorun'

class TestTokenizr  < MiniTest::Unit::TestCase
  describe '#encode' do
    it 'encodes the given number into a string' do
      assert_equal Tokenizr.encode(123), "5IbEL8X9e"
      assert_equal Tokenizr.encode(987654321), "VGh4Q9X9e"
    end

    it 'only uses alphanumeric characters' do
      range = (1...1000000)
      1000.times do
        assert_match /^[a-zA-Z0-9]+/, Tokenizr.encode(rand(range))
      end
    end

    it 'ensures encoded strings are at least 9 characters long' do
      assert_operator Tokenizr.encode(1).length, :>=, 9
      range = (2...1000000)
      1000.times do
        assert_operator Tokenizr.encode(rand(range)).length, :>=, 9
      end
    end
  end

  describe '#decode' do
    it 'decodes the given string into a number' do
      assert_equal Tokenizr.decode("5IbEL8X9e"), 123
      assert_equal Tokenizr.decode("VGh4Q9X9e"), 987654321
    end
  end
end