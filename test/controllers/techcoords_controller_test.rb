require 'test_helper'

class TechcoordsControllerTest < ActionController::TestCase
  setup do
    @techcoord = techcoords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techcoords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techcoord" do
    assert_difference('Techcoord.count') do
      post :create, techcoord: {  }
    end

    assert_redirected_to techcoord_path(assigns(:techcoord))
  end

  test "should show techcoord" do
    get :show, id: @techcoord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @techcoord
    assert_response :success
  end

  test "should update techcoord" do
    patch :update, id: @techcoord, techcoord: {  }
    assert_redirected_to techcoord_path(assigns(:techcoord))
  end

  test "should destroy techcoord" do
    assert_difference('Techcoord.count', -1) do
      delete :destroy, id: @techcoord
    end

    assert_redirected_to techcoords_path
  end
end
