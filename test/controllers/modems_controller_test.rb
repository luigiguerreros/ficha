require 'test_helper'

class ModemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modem = modems(:one)
  end

  test "should get index" do
    get modems_url
    assert_response :success
  end

  test "should get new" do
    get new_modem_url
    assert_response :success
  end

  test "should create modem" do
    assert_difference('Modem.count') do
      post modems_url, params: { modem: { nombre_modem: @modem.nombre_modem, oc_modem: @modem.oc_modem, ps_modem: @modem.ps_modem } }
    end

    assert_redirected_to modem_url(Modem.last)
  end

  test "should show modem" do
    get modem_url(@modem)
    assert_response :success
  end

  test "should get edit" do
    get edit_modem_url(@modem)
    assert_response :success
  end

  test "should update modem" do
    patch modem_url(@modem), params: { modem: { nombre_modem: @modem.nombre_modem, oc_modem: @modem.oc_modem, ps_modem: @modem.ps_modem } }
    assert_redirected_to modem_url(@modem)
  end

  test "should destroy modem" do
    assert_difference('Modem.count', -1) do
      delete modem_url(@modem)
    end

    assert_redirected_to modems_url
  end
end
