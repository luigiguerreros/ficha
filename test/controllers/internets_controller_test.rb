require 'test_helper'

class InternetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internet = internets(:one)
  end

  test "should get index" do
    get internets_url
    assert_response :success
  end

  test "should get new" do
    get new_internet_url
    assert_response :success
  end

  test "should create internet" do
    assert_difference('Internet.count') do
      post internets_url, params: { internet: { costo: @internet.costo, pack: @internet.pack, tipo_pago: @internet.tipo_pago } }
    end

    assert_redirected_to internet_url(Internet.last)
  end

  test "should show internet" do
    get internet_url(@internet)
    assert_response :success
  end

  test "should get edit" do
    get edit_internet_url(@internet)
    assert_response :success
  end

  test "should update internet" do
    patch internet_url(@internet), params: { internet: { costo: @internet.costo, pack: @internet.pack, tipo_pago: @internet.tipo_pago } }
    assert_redirected_to internet_url(@internet)
  end

  test "should destroy internet" do
    assert_difference('Internet.count', -1) do
      delete internet_url(@internet)
    end

    assert_redirected_to internets_url
  end
end
