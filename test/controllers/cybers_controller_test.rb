require 'test_helper'

class CybersControllerTest < ActionController::TestCase
  setup do
    @cyber = cybers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cybers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cyber" do
    assert_difference('Cyber.count') do
      post :create, cyber: {  }
    end

    assert_redirected_to cyber_path(assigns(:cyber))
  end

  test "should show cyber" do
    get :show, id: @cyber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cyber
    assert_response :success
  end

  test "should update cyber" do
    patch :update, id: @cyber, cyber: {  }
    assert_redirected_to cyber_path(assigns(:cyber))
  end

  test "should destroy cyber" do
    assert_difference('Cyber.count', -1) do
      delete :destroy, id: @cyber
    end

    assert_redirected_to cybers_path
  end
end
