require "application_system_test_case"

class CohortTeachersTest < ApplicationSystemTestCase
  setup do
    @cohort_teacher = cohort_teachers(:one)
  end

  test "visiting the index" do
    visit cohort_teachers_url
    assert_selector "h1", text: "Cohort Teachers"
  end

  test "creating a Cohort teacher" do
    visit cohort_teachers_url
    click_on "New Cohort Teacher"

    click_on "Create Cohort teacher"

    assert_text "Cohort teacher was successfully created"
    click_on "Back"
  end

  test "updating a Cohort teacher" do
    visit cohort_teachers_url
    click_on "Edit", match: :first

    click_on "Update Cohort teacher"

    assert_text "Cohort teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Cohort teacher" do
    visit cohort_teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cohort teacher was successfully destroyed"
  end
end
