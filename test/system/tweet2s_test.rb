require "application_system_test_case"

class Tweet2sTest < ApplicationSystemTestCase
  setup do
    @tweet2 = tweet2s(:one)
  end

  test "visiting the index" do
    visit tweet2s_url
    assert_selector "h1", text: "Tweet2s"
  end

  test "should create tweet2" do
    visit tweet2s_url
    click_on "New tweet2"

    fill_in "Content", with: @tweet2.content
    click_on "Create Tweet2"

    assert_text "Tweet2 was successfully created"
    click_on "Back"
  end

  test "should update Tweet2" do
    visit tweet2_url(@tweet2)
    click_on "Edit this tweet2", match: :first

    fill_in "Content", with: @tweet2.content
    click_on "Update Tweet2"

    assert_text "Tweet2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Tweet2" do
    visit tweet2_url(@tweet2)
    click_on "Destroy this tweet2", match: :first

    assert_text "Tweet2 was successfully destroyed"
  end
end
