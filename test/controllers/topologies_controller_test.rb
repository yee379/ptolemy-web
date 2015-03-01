require 'test_helper'

class TopologiesControllerTest < ActionController::TestCase
  setup do
    @topology = topologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topology" do
    assert_difference('Topology.count') do
      post :create, topology: {  }
    end

    assert_redirected_to topology_path(assigns(:topology))
  end

  test "should show topology" do
    get :show, id: @topology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topology
    assert_response :success
  end

  test "should update topology" do
    patch :update, id: @topology, topology: {  }
    assert_redirected_to topology_path(assigns(:topology))
  end

  test "should destroy topology" do
    assert_difference('Topology.count', -1) do
      delete :destroy, id: @topology
    end

    assert_redirected_to topologies_path
  end
end
