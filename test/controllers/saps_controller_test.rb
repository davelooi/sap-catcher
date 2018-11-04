require 'test_helper'

class SapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sap = saps(:one)
  end

  test "should get index" do
    get saps_url
    assert_response :success
  end

  test "should get new" do
    get new_sap_url
    assert_response :success
  end

  test "should create sap" do
    assert_difference('Sap.count') do
      post saps_url, params: { sap: {  } }
    end

    assert_redirected_to sap_url(Sap.last)
  end

  test "should show sap" do
    get sap_url(@sap)
    assert_response :success
  end

  test "should get edit" do
    get edit_sap_url(@sap)
    assert_response :success
  end

  test "should update sap" do
    patch sap_url(@sap), params: { sap: {  } }
    assert_redirected_to sap_url(@sap)
  end

  test "should destroy sap" do
    assert_difference('Sap.count', -1) do
      delete sap_url(@sap)
    end

    assert_redirected_to saps_url
  end
end
