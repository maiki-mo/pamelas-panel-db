require 'test_helper'

class CohInstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coh_inst = coh_insts(:one)
  end

  test "should get index" do
    get coh_insts_url
    assert_response :success
  end

  test "should get new" do
    get new_coh_inst_url
    assert_response :success
  end

  test "should create coh_inst" do
    assert_difference('CohInst.count') do
      post coh_insts_url, params: { coh_inst: { cohort_id: @coh_inst.cohort_id, instructor_id: @coh_inst.instructor_id } }
    end

    assert_redirected_to coh_inst_url(CohInst.last)
  end

  test "should show coh_inst" do
    get coh_inst_url(@coh_inst)
    assert_response :success
  end

  test "should get edit" do
    get edit_coh_inst_url(@coh_inst)
    assert_response :success
  end

  test "should update coh_inst" do
    patch coh_inst_url(@coh_inst), params: { coh_inst: { cohort_id: @coh_inst.cohort_id, instructor_id: @coh_inst.instructor_id } }
    assert_redirected_to coh_inst_url(@coh_inst)
  end

  test "should destroy coh_inst" do
    assert_difference('CohInst.count', -1) do
      delete coh_inst_url(@coh_inst)
    end

    assert_redirected_to coh_insts_url
  end
end
