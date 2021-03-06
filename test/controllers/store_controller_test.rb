require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select '#columns #side a', minumum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', /[,\d]+\,\d\d\s\NOK/
    assert_select '.price', '49,50 NOK'
  end
end
