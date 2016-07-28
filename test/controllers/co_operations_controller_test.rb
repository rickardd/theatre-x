require 'test_helper'

class CoOperationsControllerTest < ActionController::TestCase
  setup do
    @co_operation = co_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:co_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create co_operation" do
    assert_difference('CoOperation.count') do
      post :create, co_operation: { column_1: @co_operation.column_1, column_2: @co_operation.column_2, image: @co_operation.image, title: @co_operation.title }
    end

    assert_redirected_to co_operation_path(assigns(:co_operation))
  end

  test "should show co_operation" do
    get :show, id: @co_operation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @co_operation
    assert_response :success
  end

  test "should update co_operation" do
    patch :update, id: @co_operation, co_operation: { column_1: @co_operation.column_1, column_2: @co_operation.column_2, image: @co_operation.image, title: @co_operation.title }
    assert_redirected_to co_operation_path(assigns(:co_operation))
  end

  test "should destroy co_operation" do
    assert_difference('CoOperation.count', -1) do
      delete :destroy, id: @co_operation
    end

    assert_redirected_to co_operations_path
  end
end
