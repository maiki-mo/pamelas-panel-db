require "application_system_test_case"

class CohortInstructorsTest < ApplicationSystemTestCase
  setup do
    @cohort_instructor = cohort_instructors(:one)
  end

  test "visiting the index" do
    visit cohort_instructors_url
    assert_selector "h1", text: "Cohort Instructors"
  end

  test "creating a Cohort instructor" do
    visit cohort_instructors_url
    click_on "New Cohort Instructor"

    click_on "Create Cohort instructor"

    assert_text "Cohort instructor was successfully created"
    click_on "Back"
  end

  test "updating a Cohort instructor" do
    visit cohort_instructors_url
    click_on "Edit", match: :first

    click_on "Update Cohort instructor"

    assert_text "Cohort instructor was successfully updated"
    click_on "Back"
  end

  test "destroying a Cohort instructor" do
    visit cohort_instructors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cohort instructor was successfully destroyed"
  end
end
