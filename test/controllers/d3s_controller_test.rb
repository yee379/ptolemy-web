require 'test_helper'

class D3sControllerTest < ActionController::TestCase
  setup do
    @d3 = d3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:d3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create d3" do
    assert_difference('D3.count') do
      post :create, d3: {  }
    end

    assert_redirected_to d3_path(assigns(:d3))
  end

  test "should show d3" do
    get :show, id: @d3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @d3
    assert_response :success
  end

  test "should update d3" do
    patch :update, id: @d3, d3: {  }
    assert_redirected_to d3_path(assigns(:d3))
  end

  test "should destroy d3" do
    assert_difference('D3.count', -1) do
      delete :destroy, id: @d3
    end

    assert_redirected_to d3s_path
  end
end
