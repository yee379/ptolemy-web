require 'test_helper'

class NetengsControllerTest < ActionController::TestCase
  setup do
    @neteng = netengs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:netengs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neteng" do
    assert_difference('Neteng.count') do
      post :create, neteng: {  }
    end

    assert_redirected_to neteng_path(assigns(:neteng))
  end

  test "should show neteng" do
    get :show, id: @neteng
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @neteng
    assert_response :success
  end

  test "should update neteng" do
    patch :update, id: @neteng, neteng: {  }
    assert_redirected_to neteng_path(assigns(:neteng))
  end

  test "should destroy neteng" do
    assert_difference('Neteng.count', -1) do
      delete :destroy, id: @neteng
    end

    assert_redirected_to netengs_path
  end
end
