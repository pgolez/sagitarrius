require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "the name method" do
    assert_equal 'Forensics Laboratory', rooms(:forensics_lab).name
  end
end
