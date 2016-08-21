require 'test_helper'

class Deco2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deco2 = deco2s(:one)
  end

  test "should get index" do
    get deco2s_url
    assert_response :success
  end

  test "should get new" do
    get new_deco2_url
    assert_response :success
  end

  test "should create deco2" do
    assert_difference('Deco2.count') do
      post deco2s_url, params: { deco2: { oc: @deco2.oc, ps: @deco2.ps, tipo: @deco2.tipo } }
    end

    assert_redirected_to deco2_url(Deco2.last)
  end

  test "should show deco2" do
    get deco2_url(@deco2)
    assert_response :success
  end

  test "should get edit" do
    get edit_deco2_url(@deco2)
    assert_response :success
  end

  test "should update deco2" do
    patch deco2_url(@deco2), params: { deco2: { oc: @deco2.oc, ps: @deco2.ps, tipo: @deco2.tipo } }
    assert_redirected_to deco2_url(@deco2)
  end

  test "should destroy deco2" do
    assert_difference('Deco2.count', -1) do
      delete deco2_url(@deco2)
    end

    assert_redirected_to deco2s_url
  end
end
