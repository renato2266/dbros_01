require 'test_helper'

class InvestigationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investigations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investigation" do
    assert_difference('Investigation.count') do
      post :create, :investigation => { }
    end

    assert_redirected_to investigation_path(assigns(:investigation))
  end

  test "should show investigation" do
    get :show, :id => investigations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => investigations(:one).to_param
    assert_response :success
  end

  test "should update investigation" do
    put :update, :id => investigations(:one).to_param, :investigation => { }
    assert_redirected_to investigation_path(assigns(:investigation))
  end

  test "should destroy investigation" do
    assert_difference('Investigation.count', -1) do
      delete :destroy, :id => investigations(:one).to_param
    end

    assert_redirected_to investigations_path
  end
end
