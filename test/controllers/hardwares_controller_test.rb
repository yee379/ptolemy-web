require 'test_helper'

class HardwaresControllerTest < ActionController::TestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardware" do
    assert_difference('Hardware.count') do
      post :create, hardware: { available: @hardware.available, bulletin_url: @hardware.bulletin_url, end_of_sale: @hardware.end_of_sale, end_of_support: @hardware.end_of_support, id: @hardware.id, model: @hardware.model, price: @hardware.price, vendor: @hardware.vendor }
    end

    assert_redirected_to hardware_path(assigns(:hardware))
  end

  test "should show hardware" do
    get :show, id: @hardware
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hardware
    assert_response :success
  end

  test "should update hardware" do
    patch :update, id: @hardware, hardware: { available: @hardware.available, bulletin_url: @hardware.bulletin_url, end_of_sale: @hardware.end_of_sale, end_of_support: @hardware.end_of_support, id: @hardware.id, model: @hardware.model, price: @hardware.price, vendor: @hardware.vendor }
    assert_redirected_to hardware_path(assigns(:hardware))
  end

  test "should destroy hardware" do
    assert_difference('Hardware.count', -1) do
      delete :destroy, id: @hardware
    end

    assert_redirected_to hardwares_path
  end
end
