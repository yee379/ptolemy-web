require 'test_helper'

class DygraphsControllerTest < ActionController::TestCase
  setup do
    @dygraph = dygraphs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dygraphs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dygraph" do
    assert_difference('Dygraph.count') do
      post :create, dygraph: {  }
    end

    assert_redirected_to dygraph_path(assigns(:dygraph))
  end

  test "should show dygraph" do
    get :show, id: @dygraph
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dygraph
    assert_response :success
  end

  test "should update dygraph" do
    patch :update, id: @dygraph, dygraph: {  }
    assert_redirected_to dygraph_path(assigns(:dygraph))
  end

  test "should destroy dygraph" do
    assert_difference('Dygraph.count', -1) do
      delete :destroy, id: @dygraph
    end

    assert_redirected_to dygraphs_path
  end
end
