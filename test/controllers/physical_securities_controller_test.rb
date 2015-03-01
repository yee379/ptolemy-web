require 'test_helper'

class PhysicalSecuritiesControllerTest < ActionController::TestCase
  setup do
    @physical_security = physical_securities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physical_securities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physical_security" do
    assert_difference('PhysicalSecurity.count') do
      post :create, physical_security: { cabinet: @physical_security.cabinet, device: @physical_security.device, environment: @physical_security.environment }
    end

    assert_redirected_to physical_security_path(assigns(:physical_security))
  end

  test "should show physical_security" do
    get :show, id: @physical_security
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physical_security
    assert_response :success
  end

  test "should update physical_security" do
    patch :update, id: @physical_security, physical_security: { cabinet: @physical_security.cabinet, device: @physical_security.device, environment: @physical_security.environment }
    assert_redirected_to physical_security_path(assigns(:physical_security))
  end

  test "should destroy physical_security" do
    assert_difference('PhysicalSecurity.count', -1) do
      delete :destroy, id: @physical_security
    end

    assert_redirected_to physical_securities_path
  end
end
