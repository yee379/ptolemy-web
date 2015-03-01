require 'test_helper'

class PortsControllerTest < ActionController::TestCase
  setup do
    @port = ports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create port" do
    assert_difference('Port.count') do
      post :create, port: { created_at: @port.created_at, data: @port.data, device: @port.device, mac_addresses: @port.mac_addresses, physical_port: @port.physical_port, updated_at: @port.updated_at }
    end

    assert_redirected_to port_path(assigns(:port))
  end

  test "should show port" do
    get :show, id: @port
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @port
    assert_response :success
  end

  test "should update port" do
    patch :update, id: @port, port: { created_at: @port.created_at, data: @port.data, device: @port.device, mac_addresses: @port.mac_addresses, physical_port: @port.physical_port, updated_at: @port.updated_at }
    assert_redirected_to port_path(assigns(:port))
  end

  test "should destroy port" do
    assert_difference('Port.count', -1) do
      delete :destroy, id: @port
    end

    assert_redirected_to ports_path
  end
end
