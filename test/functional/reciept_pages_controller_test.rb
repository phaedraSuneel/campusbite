require 'test_helper'

class RecieptPagesControllerTest < ActionController::TestCase
  setup do
    @reciept_page = reciept_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reciept_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reciept_page" do
    assert_difference('RecieptPage.count') do
      post :create, reciept_page: { content: @reciept_page.content }
    end

    assert_redirected_to reciept_page_path(assigns(:reciept_page))
  end

  test "should show reciept_page" do
    get :show, id: @reciept_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reciept_page
    assert_response :success
  end

  test "should update reciept_page" do
    put :update, id: @reciept_page, reciept_page: { content: @reciept_page.content }
    assert_redirected_to reciept_page_path(assigns(:reciept_page))
  end

  test "should destroy reciept_page" do
    assert_difference('RecieptPage.count', -1) do
      delete :destroy, id: @reciept_page
    end

    assert_redirected_to reciept_pages_path
  end
end
