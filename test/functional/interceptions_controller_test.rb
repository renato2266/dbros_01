require 'test_helper'

class InterceptionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interceptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interception" do
    assert_difference('Interception.count') do
      post :create, :interception => { }
    end

    assert_redirected_to interception_path(assigns(:interception))
  end

  test "should show interception" do
    get :show, :id => interceptions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => interceptions(:one).to_param
    assert_response :success
  end

  test "should update interception" do
    put :update, :id => interceptions(:one).to_param, :interception => { }
    assert_redirected_to interception_path(assigns(:interception))
  end

  test "should destroy interception" do
    assert_difference('Interception.count', -1) do
      delete :destroy, :id => interceptions(:one).to_param
    end

    assert_redirected_to interceptions_path
  end
end
