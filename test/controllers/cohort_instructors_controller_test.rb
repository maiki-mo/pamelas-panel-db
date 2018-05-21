require 'test_helper'

class CohortInstructorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohort_instructor = cohort_instructors(:one)
  end

  test "should get index" do
    get cohort_instructors_url
    assert_response :success
  end

  test "should get new" do
    get new_cohort_instructor_url
    assert_response :success
  end

  test "should create cohort_instructor" do
    assert_difference('CohortInstructor.count') do
      post cohort_instructors_url, params: { cohort_instructor: {  } }
    end

    assert_redirected_to cohort_instructor_url(CohortInstructor.last)
  end

  test "should show cohort_instructor" do
    get cohort_instructor_url(@cohort_instructor)
    assert_response :success
  end

  test "should get edit" do
    get edit_cohort_instructor_url(@cohort_instructor)
    assert_response :success
  end

  test "should update cohort_instructor" do
    patch cohort_instructor_url(@cohort_instructor), params: { cohort_instructor: {  } }
    assert_redirected_to cohort_instructor_url(@cohort_instructor)
  end

  test "should destroy cohort_instructor" do
    assert_difference('CohortInstructor.count', -1) do
      delete cohort_instructor_url(@cohort_instructor)
    end

    assert_redirected_to cohort_instructors_url
  end
end
