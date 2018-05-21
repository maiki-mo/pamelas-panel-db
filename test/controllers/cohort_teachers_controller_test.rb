require 'test_helper'

class CohortTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohort_teacher = cohort_teachers(:one)
  end

  test "should get index" do
    get cohort_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_cohort_teacher_url
    assert_response :success
  end

  test "should create cohort_teacher" do
    assert_difference('CohortTeacher.count') do
      post cohort_teachers_url, params: { cohort_teacher: {  } }
    end

    assert_redirected_to cohort_teacher_url(CohortTeacher.last)
  end

  test "should show cohort_teacher" do
    get cohort_teacher_url(@cohort_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_cohort_teacher_url(@cohort_teacher)
    assert_response :success
  end

  test "should update cohort_teacher" do
    patch cohort_teacher_url(@cohort_teacher), params: { cohort_teacher: {  } }
    assert_redirected_to cohort_teacher_url(@cohort_teacher)
  end

  test "should destroy cohort_teacher" do
    assert_difference('CohortTeacher.count', -1) do
      delete cohort_teacher_url(@cohort_teacher)
    end

    assert_redirected_to cohort_teachers_url
  end
end
