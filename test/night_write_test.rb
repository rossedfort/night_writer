require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'

class NightWriteTests < Minitest::Test
  def test_it_can_write_the_first_line
    night = NightWrite.new.convert_to_braille(0)
    assert_equal "0.", night
  end

  def test_it_can_write_the_second_line
    night = NightWrite.new.convert_to_braille(1)
    assert_equal "..", night
  end

  def test_it_can_write_the_third_line
    night = NightWrite.new.convert_to_braille(2)
    assert_equal "..", night
  end

  def test_parse_message_returns_an_array_of_single_characters
    night = NightWrite.new
    assert_equal ['a', 'b', 'c'], night.parse_message('abc')
  end
end
