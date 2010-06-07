require 'test_helper'

class AmbitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambit" do
    assert_difference('Ambit.count') do
      post :create, :ambit => { }
    end

    assert_redirected_to ambit_path(assigns(:ambit))
  end

  test "should show ambit" do
    get :show, :id => ambits(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ambits(:one).to_param
    assert_response :success
  end

  test "should update ambit" do
    put :update, :id => ambits(:one).to_param, :ambit => { }
    assert_redirected_to ambit_path(assigns(:ambit))
  end

  test "should destroy ambit" do
    assert_difference('Ambit.count', -1) do
      delete :destroy, :id => ambits(:one).to_param
    end

    assert_redirected_to ambits_path
  end
end
