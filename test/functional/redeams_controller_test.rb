require 'test_helper'

class RedeamsControllerTest < ActionController::TestCase
  setup do
    @redeam = redeams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redeams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redeam" do
    assert_difference('Redeam.count') do
      post :create, redeam: { item_id: @redeam.item_id, item_name: @redeam.item_name, item_price: @redeam.item_price }
    end

    assert_redirected_to redeam_path(assigns(:redeam))
  end

  test "should show redeam" do
    get :show, id: @redeam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @redeam
    assert_response :success
  end

  test "should update redeam" do
    put :update, id: @redeam, redeam: { item_id: @redeam.item_id, item_name: @redeam.item_name, item_price: @redeam.item_price }
    assert_redirected_to redeam_path(assigns(:redeam))
  end

  test "should destroy redeam" do
    assert_difference('Redeam.count', -1) do
      delete :destroy, id: @redeam
    end

    assert_redirected_to redeams_path
  end
end
