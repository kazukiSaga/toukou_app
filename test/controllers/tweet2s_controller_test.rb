require "test_helper"

class Tweet2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet2 = tweet2s(:one)
  end

  test "should get index" do
    get tweet2s_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet2_url
    assert_response :success
  end

  test "should create tweet2" do
    assert_difference("Tweet2.count") do
      post tweet2s_url, params: { tweet2: { content: @tweet2.content } }
    end

    assert_redirected_to tweet2_url(Tweet2.last)
  end

  test "should show tweet2" do
    get tweet2_url(@tweet2)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet2_url(@tweet2)
    assert_response :success
  end

  test "should update tweet2" do
    patch tweet2_url(@tweet2), params: { tweet2: { content: @tweet2.content } }
    assert_redirected_to tweet2_url(@tweet2)
  end

  test "should destroy tweet2" do
    assert_difference("Tweet2.count", -1) do
      delete tweet2_url(@tweet2)
    end

    assert_redirected_to tweet2s_url
  end
end
