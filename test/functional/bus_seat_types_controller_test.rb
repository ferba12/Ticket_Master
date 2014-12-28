require 'test_helper'

class BusSeatTypesControllerTest < ActionController::TestCase
  setup do
    @bus_seat_type = bus_seat_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bus_seat_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bus_seat_type" do
    assert_difference('BusSeatType.count') do
      post :create, bus_seat_type: { company_id: @bus_seat_type.company_id, description: @bus_seat_type.description, seat_type_id: @bus_seat_type.seat_type_id }
    end

    assert_redirected_to bus_seat_type_path(assigns(:bus_seat_type))
  end

  test "should show bus_seat_type" do
    get :show, id: @bus_seat_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bus_seat_type
    assert_response :success
  end

  test "should update bus_seat_type" do
    put :update, id: @bus_seat_type, bus_seat_type: { company_id: @bus_seat_type.company_id, description: @bus_seat_type.description, seat_type_id: @bus_seat_type.seat_type_id }
    assert_redirected_to bus_seat_type_path(assigns(:bus_seat_type))
  end

  test "should destroy bus_seat_type" do
    assert_difference('BusSeatType.count', -1) do
      delete :destroy, id: @bus_seat_type
    end

    assert_redirected_to bus_seat_types_path
  end
end
