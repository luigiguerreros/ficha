require 'test_helper'

class AdministrativasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrativa = administrativas(:one)
  end

  test "should get index" do
    get administrativas_url
    assert_response :success
  end

  test "should get new" do
    get new_administrativa_url
    assert_response :success
  end

  test "should create administrativa" do
    assert_difference('Administrativa.count') do
      post administrativas_url, params: { administrativa: { ps_administrativa: @administrativa.ps_administrativa, velocidad: @administrativa.velocidad } }
    end

    assert_redirected_to administrativa_url(Administrativa.last)
  end

  test "should show administrativa" do
    get administrativa_url(@administrativa)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrativa_url(@administrativa)
    assert_response :success
  end

  test "should update administrativa" do
    patch administrativa_url(@administrativa), params: { administrativa: { ps_administrativa: @administrativa.ps_administrativa, velocidad: @administrativa.velocidad } }
    assert_redirected_to administrativa_url(@administrativa)
  end

  test "should destroy administrativa" do
    assert_difference('Administrativa.count', -1) do
      delete administrativa_url(@administrativa)
    end

    assert_redirected_to administrativas_url
  end
end
