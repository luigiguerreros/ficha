require 'test_helper'

class Deco1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deco1 = deco1s(:one)
  end

  test "should get index" do
    get deco1s_url
    assert_response :success
  end

  test "should get new" do
    get new_deco1_url
    assert_response :success
  end

  test "should create deco1" do
    assert_difference('Deco1.count') do
      post deco1s_url, params: { deco1: { oc: @deco1.oc, ps: @deco1.ps, tipo: @deco1.tipo } }
    end

    assert_redirected_to deco1_url(Deco1.last)
  end

  test "should show deco1" do
    get deco1_url(@deco1)
    assert_response :success
  end

  test "should get edit" do
    get edit_deco1_url(@deco1)
    assert_response :success
  end

  test "should update deco1" do
    patch deco1_url(@deco1), params: { deco1: { oc: @deco1.oc, ps: @deco1.ps, tipo: @deco1.tipo } }
    assert_redirected_to deco1_url(@deco1)
  end

  test "should destroy deco1" do
    assert_difference('Deco1.count', -1) do
      delete deco1_url(@deco1)
    end

    assert_redirected_to deco1s_url
  end
end
