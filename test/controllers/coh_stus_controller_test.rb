require 'test_helper'

class CohStusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coh_stu = coh_stus(:one)
  end

  test "should get index" do
    get coh_stus_url
    assert_response :success
  end

  test "should get new" do
    get new_coh_stu_url
    assert_response :success
  end

  test "should create coh_stu" do
    assert_difference('CohStu.count') do
      post coh_stus_url, params: { coh_stu: { cohort_id: @coh_stu.cohort_id, student_id: @coh_stu.student_id } }
    end

    assert_redirected_to coh_stu_url(CohStu.last)
  end

  test "should show coh_stu" do
    get coh_stu_url(@coh_stu)
    assert_response :success
  end

  test "should get edit" do
    get edit_coh_stu_url(@coh_stu)
    assert_response :success
  end

  test "should update coh_stu" do
    patch coh_stu_url(@coh_stu), params: { coh_stu: { cohort_id: @coh_stu.cohort_id, student_id: @coh_stu.student_id } }
    assert_redirected_to coh_stu_url(@coh_stu)
  end

  test "should destroy coh_stu" do
    assert_difference('CohStu.count', -1) do
      delete coh_stu_url(@coh_stu)
    end

    assert_redirected_to coh_stus_url
  end
end
