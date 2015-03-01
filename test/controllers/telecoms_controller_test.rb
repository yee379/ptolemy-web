require 'test_helper'

class TelecomsControllerTest < ActionController::TestCase
  setup do
    @telecom = telecoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telecoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telecom" do
    assert_difference('Telecom.count') do
      post :create, telecom: { context: @telecom.context, created_at: @telecom.created_at, data: @telecom.data, id: @telecom.id, updated_at: @telecom.updated_at }
    end

    assert_redirected_to telecom_path(assigns(:telecom))
  end

  test "should show telecom" do
    get :show, id: @telecom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telecom
    assert_response :success
  end

  test "should update telecom" do
    patch :update, id: @telecom, telecom: { context: @telecom.context, created_at: @telecom.created_at, data: @telecom.data, id: @telecom.id, updated_at: @telecom.updated_at }
    assert_redirected_to telecom_path(assigns(:telecom))
  end

  test "should destroy telecom" do
    assert_difference('Telecom.count', -1) do
      delete :destroy, id: @telecom
    end

    assert_redirected_to telecoms_path
  end
end
