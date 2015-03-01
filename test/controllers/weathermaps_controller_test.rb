require 'test_helper'

class WeathermapsControllerTest < ActionController::TestCase
  setup do
    @weathermap = weathermaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weathermaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weathermap" do
    assert_difference('Weathermap.count') do
      post :create, weathermap: {  }
    end

    assert_redirected_to weathermap_path(assigns(:weathermap))
  end

  test "should show weathermap" do
    get :show, id: @weathermap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weathermap
    assert_response :success
  end

  test "should update weathermap" do
    patch :update, id: @weathermap, weathermap: {  }
    assert_redirected_to weathermap_path(assigns(:weathermap))
  end

  test "should destroy weathermap" do
    assert_difference('Weathermap.count', -1) do
      delete :destroy, id: @weathermap
    end

    assert_redirected_to weathermaps_path
  end
end
