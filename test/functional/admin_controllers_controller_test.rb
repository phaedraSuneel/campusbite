require 'test_helper'

class AdminControllersControllerTest < ActionController::TestCase
  setup do
    @admin_controller = admin_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_controller" do
    assert_difference('AdminController.count') do
      post :create, admin_controller: {  }
    end

    assert_redirected_to admin_controller_path(assigns(:admin_controller))
  end

  test "should show admin_controller" do
    get :show, id: @admin_controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_controller
    assert_response :success
  end

  test "should update admin_controller" do
    put :update, id: @admin_controller, admin_controller: {  }
    assert_redirected_to admin_controller_path(assigns(:admin_controller))
  end

  test "should destroy admin_controller" do
    assert_difference('AdminController.count', -1) do
      delete :destroy, id: @admin_controller
    end

    assert_redirected_to admin_controllers_path
  end
end
