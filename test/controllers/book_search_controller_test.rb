require "test_helper"

class BookSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_search_index_url
    assert_response :success
  end
end
