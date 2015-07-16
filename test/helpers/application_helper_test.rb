require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Intern Home"
    assert_equal full_title("Help"), "Help | Intern Home"
  end
end