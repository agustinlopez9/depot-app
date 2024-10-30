require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'ul a', minimum: 2
    assert_select 'div #products img', Product.count
    assert_select 'h1', 'The Gamer Shop'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end
end
