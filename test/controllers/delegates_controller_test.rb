require 'test_helper'

class DelegatesControllerTest < ActionController::TestCase
  setup do
    @delegate = delegates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delegates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delegate" do
    assert_difference('Delegate.count') do
      post :create, delegate: {  }
    end

    assert_redirected_to delegate_path(assigns(:delegate))
  end

  test "should show delegate" do
    get :show, id: @delegate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delegate
    assert_response :success
  end

  test "should update delegate" do
    patch :update, id: @delegate, delegate: {  }
    assert_redirected_to delegate_path(assigns(:delegate))
  end

  test "should destroy delegate" do
    assert_difference('Delegate.count', -1) do
      delete :destroy, id: @delegate
    end

    assert_redirected_to delegates_path
  end
end
