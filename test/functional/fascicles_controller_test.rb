require 'test_helper'

class FasciclesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fascicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fascicle" do
    assert_difference('Fascicle.count') do
      post :create, :fascicle => { }
    end

    assert_redirected_to fascicle_path(assigns(:fascicle))
  end

  test "should show fascicle" do
    get :show, :id => fascicles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fascicles(:one).to_param
    assert_response :success
  end

  test "should update fascicle" do
    put :update, :id => fascicles(:one).to_param, :fascicle => { }
    assert_redirected_to fascicle_path(assigns(:fascicle))
  end

  test "should destroy fascicle" do
    assert_difference('Fascicle.count', -1) do
      delete :destroy, :id => fascicles(:one).to_param
    end

    assert_redirected_to fascicles_path
  end
end
