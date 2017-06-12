gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'cerdit_check_test'

class CreditCheckTest < Minitest::Test

  def test_card_has_16_chars
    instance = CreditCheck.new
    result = instance.reg_or_amex
    expexted = 16
    assert_eqaul expected, result
  end



end
