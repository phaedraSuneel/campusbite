require 'test_helper'

class TermOfServicePagesControllerTest < ActionController::TestCase
  setup do
    @term_of_service_page = term_of_service_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_of_service_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_of_service_page" do
    assert_difference('TermOfServicePage.count') do
      post :create, term_of_service_page: { content: @term_of_service_page.content }
    end

    assert_redirected_to term_of_service_page_path(assigns(:term_of_service_page))
  end

  test "should show term_of_service_page" do
    get :show, id: @term_of_service_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_of_service_page
    assert_response :success
  end

  test "should update term_of_service_page" do
    put :update, id: @term_of_service_page, term_of_service_page: { content: @term_of_service_page.content }
    assert_redirected_to term_of_service_page_path(assigns(:term_of_service_page))
  end

  test "should destroy term_of_service_page" do
    assert_difference('TermOfServicePage.count', -1) do
      delete :destroy, id: @term_of_service_page
    end

    assert_redirected_to term_of_service_pages_path
  end
end
