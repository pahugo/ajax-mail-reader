require 'test_helper'

class EmailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get '/'
    assert_response :success
  end

  test "index page shows emails table" do
    get '/'
    assert_select 'tr', 3

  end

  test "index page shows right number of emails" do
    get '/'
    assert_select 'td', Email.all.length * 2
    #asserts that index table contains the right number lines (=number of emails)
  end
end
