require "application_system_test_case"

class CohInstsTest < ApplicationSystemTestCase
  setup do
    @coh_inst = coh_insts(:one)
  end

  test "visiting the index" do
    visit coh_insts_url
    assert_selector "h1", text: "Coh Insts"
  end

  test "creating a Coh inst" do
    visit coh_insts_url
    click_on "New Coh Inst"

    fill_in "Cohort", with: @coh_inst.cohort_id
    fill_in "Instructor", with: @coh_inst.instructor_id
    click_on "Create Coh inst"

    assert_text "Coh inst was successfully created"
    click_on "Back"
  end

  test "updating a Coh inst" do
    visit coh_insts_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @coh_inst.cohort_id
    fill_in "Instructor", with: @coh_inst.instructor_id
    click_on "Update Coh inst"

    assert_text "Coh inst was successfully updated"
    click_on "Back"
  end

  test "destroying a Coh inst" do
    visit coh_insts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coh inst was successfully destroyed"
  end
end
