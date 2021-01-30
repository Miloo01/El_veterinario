require "application_system_test_case"

class PetHistoriesTest < ApplicationSystemTestCase
  setup do
    @pet_history = pet_histories(:one)
  end

  test "visiting the index" do
    visit pet_histories_url
    assert_selector "h1", text: "Pet Histories"
  end

  test "creating a Pet history" do
    visit pet_histories_url
    click_on "New Pet History"

    fill_in "Description", with: @pet_history.description
    fill_in "Heigth", with: @pet_history.heigth
    fill_in "Weight", with: @pet_history.weight
    click_on "Create Pet history"

    assert_text "Pet history was successfully created"
    click_on "Back"
  end

  test "updating a Pet history" do
    visit pet_histories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @pet_history.description
    fill_in "Heigth", with: @pet_history.heigth
    fill_in "Weight", with: @pet_history.weight
    click_on "Update Pet history"

    assert_text "Pet history was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet history" do
    visit pet_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet history was successfully destroyed"
  end
end
