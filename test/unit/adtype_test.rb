require 'test_helper'

class AdtypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Adtype.new.valid?
  end
end
