require 'test_helper'

class ReservationWeeksControllerTest < ActionController::TestCase
  setup do
    @reservation_week = reservation_weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservation_weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation_week" do
    assert_difference('ReservationWeek.count') do
      post :create, reservation_week: { note: @reservation_week.note, res_date: @reservation_week.res_date }
    end

    assert_redirected_to reservation_week_path(assigns(:reservation_week))
  end

  test "should show reservation_week" do
    get :show, id: @reservation_week
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation_week
    assert_response :success
  end

  test "should update reservation_week" do
    patch :update, id: @reservation_week, reservation_week: { note: @reservation_week.note, res_date: @reservation_week.res_date }
    assert_redirected_to reservation_week_path(assigns(:reservation_week))
  end

  test "should destroy reservation_week" do
    assert_difference('ReservationWeek.count', -1) do
      delete :destroy, id: @reservation_week
    end

    assert_redirected_to reservation_weeks_path
  end
end
