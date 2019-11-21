require 'test_helper'

class RncsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rnc = rncs(:one)
  end

  test "should get index" do
    get rncs_url
    assert_response :success
  end

  test "should get new" do
    get new_rnc_url
    assert_response :success
  end

  test "should create rnc" do
    assert_difference('Rnc.count') do
      post rncs_url, params: { rnc: { nombre: @rnc.nombre } }
    end

    assert_redirected_to rnc_url(Rnc.last)
  end

  test "should show rnc" do
    get rnc_url(@rnc)
    assert_response :success
  end

  test "should get edit" do
    get edit_rnc_url(@rnc)
    assert_response :success
  end

  test "should update rnc" do
    patch rnc_url(@rnc), params: { rnc: { nombre: @rnc.nombre } }
    assert_redirected_to rnc_url(@rnc)
  end

  test "should destroy rnc" do
    assert_difference('Rnc.count', -1) do
      delete rnc_url(@rnc)
    end

    assert_redirected_to rncs_url
  end
end
