require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { about_restaurant: @restaurant.about_restaurant, city: @restaurant.city, delivery_eta: @restaurant.delivery_eta, is_deliver: @restaurant.is_deliver, is_pick_up: @restaurant.is_pick_up, min_delivery: @restaurant.min_delivery, restaurant_name: @restaurant.restaurant_name, restaurant_phone: @restaurant.restaurant_phone, restaurant_street_address: @restaurant.restaurant_street_address, restaurant_website: @restaurant.restaurant_website, state: @restaurant.state, zip_code: @restaurant.zip_code }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    put :update, id: @restaurant, restaurant: { about_restaurant: @restaurant.about_restaurant, city: @restaurant.city, delivery_eta: @restaurant.delivery_eta, is_deliver: @restaurant.is_deliver, is_pick_up: @restaurant.is_pick_up, min_delivery: @restaurant.min_delivery, restaurant_name: @restaurant.restaurant_name, restaurant_phone: @restaurant.restaurant_phone, restaurant_street_address: @restaurant.restaurant_street_address, restaurant_website: @restaurant.restaurant_website, state: @restaurant.state, zip_code: @restaurant.zip_code }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
