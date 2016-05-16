require 'minitest/autorun'
require_relative '../models/word_formatter'

class TestWordFormatter < Minitest::Test

def setup
  @wordformatter = WordFormatter.new({    'address' => '3 Argyle House',
    'building' => "CODEBASE", 
    'postcode' => 'e13 zqf', 
    'phone' => '0131558030'})
end

def test_loud
  result = @wordformatter.loud
  assert_equal('E13 ZQF', result)
end

def test_camelcase
  result = @wordformatter.camelcase('code clan')
  assert_equal('CodeClan', result)
end


end