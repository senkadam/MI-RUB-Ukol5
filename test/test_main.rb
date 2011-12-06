# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'main'

class TestMain < Test::Unit::TestCase
  def test_main
    s1=""
    a_file = File.new("output")
    a_file.each_byte do |c|
      s1=s1+c.chr
    end
    
    s2=""
    a_file = File.new("assertFile")
    a_file.each_byte do |c|
      s2=s2+c.chr
    end
    
    assert_equal(s1, s2)
  end
end
