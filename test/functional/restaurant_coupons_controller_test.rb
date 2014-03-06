require 'test_helper'

class RestaurantCouponsControllerTest < ActionController::TestCase
  setup do
    @restaurant_coupon = restaurant_coupons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_coupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_coupon" do
    assert_difference('RestaurantCoupon.count') do
      post :create, restaurant_coupon: { expiration_date: @restaurant_coupon.expiration_date, restaurant_id: @restaurant_coupon.restaurant_id }
    end

    assert_redirected_to restaurant_coupon_path(assigns(:restaurant_coupon))
  end

  test "should show restaurant_coupon" do
    get :show, id: @restaurant_coupon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_coupon
    assert_response :success
  end

  test "should update restaurant_coupon" do
    put :update, id: @restaurant_coupon, restaurant_coupon: { expiration_date: @restaurant_coupon.expiration_date, restaurant_id: @restaurant_coupon.restaurant_id }
    assert_redirected_to restaurant_coupon_path(assigns(:restaurant_coupon))
  end

  test "should destroy restaurant_coupon" do
    assert_difference('RestaurantCoupon.count', -1) do
      delete :destroy, id: @restaurant_coupon
    end

    assert_redirected_to restaurant_coupons_path
  end
end
