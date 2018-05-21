require 'test_helper'

class CohortStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohort_student = cohort_students(:one)
  end

  test "should get index" do
    get cohort_students_url
    assert_response :success
  end

  test "should get new" do
    get new_cohort_student_url
    assert_response :success
  end

  test "should create cohort_student" do
    assert_difference('CohortStudent.count') do
      post cohort_students_url, params: { cohort_student: {  } }
    end

    assert_redirected_to cohort_student_url(CohortStudent.last)
  end

  test "should show cohort_student" do
    get cohort_student_url(@cohort_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_cohort_student_url(@cohort_student)
    assert_response :success
  end

  test "should update cohort_student" do
    patch cohort_student_url(@cohort_student), params: { cohort_student: {  } }
    assert_redirected_to cohort_student_url(@cohort_student)
  end

  test "should destroy cohort_student" do
    assert_difference('CohortStudent.count', -1) do
      delete cohort_student_url(@cohort_student)
    end

    assert_redirected_to cohort_students_url
  end
end
