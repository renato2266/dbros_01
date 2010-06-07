require 'test_helper'

class NameVehiclesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:name_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name_vehicle" do
    assert_difference('NameVehicle.count') do
      post :create, :name_vehicle => { }
    end

    assert_redirected_to name_vehicle_path(assigns(:name_vehicle))
  end

  test "should show name_vehicle" do
    get :show, :id => name_vehicles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => name_vehicles(:one).to_param
    assert_response :success
  end

  test "should update name_vehicle" do
    put :update, :id => name_vehicles(:one).to_param, :name_vehicle => { }
    assert_redirected_to name_vehicle_path(assigns(:name_vehicle))
  end

  test "should destroy name_vehicle" do
    assert_difference('NameVehicle.count', -1) do
      delete :destroy, :id => name_vehicles(:one).to_param
    end

    assert_redirected_to name_vehicles_path
  end
end
