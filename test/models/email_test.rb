require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "email object should not be empty" do
    email = Email.new(object: "", body: "Hello man", read: false)
    assert_not email.valid?
  end
end
