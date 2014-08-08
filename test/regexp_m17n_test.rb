# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      enc_method = enc.dummy? ? 'force_encoding':'encode'
      assert(RegexpM17N.non_empty?('.'.send(enc_method, enc)))
    end
  end
end
