require 'test_helper'

class HelpdesksControllerTest < ActionController::TestCase
  setup do
    @helpdesk = helpdesks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helpdesks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helpdesk" do
    assert_difference('Helpdesk.count') do
      post :create, helpdesk: {  }
    end

    assert_redirected_to helpdesk_path(assigns(:helpdesk))
  end

  test "should show helpdesk" do
    get :show, id: @helpdesk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @helpdesk
    assert_response :success
  end

  test "should update helpdesk" do
    patch :update, id: @helpdesk, helpdesk: {  }
    assert_redirected_to helpdesk_path(assigns(:helpdesk))
  end

  test "should destroy helpdesk" do
    assert_difference('Helpdesk.count', -1) do
      delete :destroy, id: @helpdesk
    end

    assert_redirected_to helpdesks_path
  end
end
