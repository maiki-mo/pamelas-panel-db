require "application_system_test_case"

class CohStusTest < ApplicationSystemTestCase
  setup do
    @coh_stu = coh_stus(:one)
  end

  test "visiting the index" do
    visit coh_stus_url
    assert_selector "h1", text: "Coh Stus"
  end

  test "creating a Coh stu" do
    visit coh_stus_url
    click_on "New Coh Stu"

    fill_in "Cohort", with: @coh_stu.cohort_id
    fill_in "Student", with: @coh_stu.student_id
    click_on "Create Coh stu"

    assert_text "Coh stu was successfully created"
    click_on "Back"
  end

  test "updating a Coh stu" do
    visit coh_stus_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @coh_stu.cohort_id
    fill_in "Student", with: @coh_stu.student_id
    click_on "Update Coh stu"

    assert_text "Coh stu was successfully updated"
    click_on "Back"
  end

  test "destroying a Coh stu" do
    visit coh_stus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coh stu was successfully destroyed"
  end
end
