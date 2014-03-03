require 'test_helper'

class RestaurantOffersControllerTest < ActionController::TestCase
  setup do
    @restaurant_offer = restaurant_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_offer" do
    assert_difference('RestaurantOffer.count') do
      post :create, restaurant_offer: { description: @restaurant_offer.description, offer_package: @restaurant_offer.offer_package, offer_price: @restaurant_offer.offer_price, restuarant_id: @restaurant_offer.restuarant_id, valid_from: @restaurant_offer.valid_from, valid_to: @restaurant_offer.valid_to }
    end

    assert_redirected_to restaurant_offer_path(assigns(:restaurant_offer))
  end

  test "should show restaurant_offer" do
    get :show, id: @restaurant_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_offer
    assert_response :success
  end

  test "should update restaurant_offer" do
    put :update, id: @restaurant_offer, restaurant_offer: { description: @restaurant_offer.description, offer_package: @restaurant_offer.offer_package, offer_price: @restaurant_offer.offer_price, restuarant_id: @restaurant_offer.restuarant_id, valid_from: @restaurant_offer.valid_from, valid_to: @restaurant_offer.valid_to }
    assert_redirected_to restaurant_offer_path(assigns(:restaurant_offer))
  end

  test "should destroy restaurant_offer" do
    assert_difference('RestaurantOffer.count', -1) do
      delete :destroy, id: @restaurant_offer
    end

    assert_redirected_to restaurant_offers_path
  end
end
