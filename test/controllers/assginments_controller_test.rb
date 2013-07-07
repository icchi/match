require 'test_helper'

class AssginmentsControllerTest < ActionController::TestCase
  setup do
    @assginment = assginments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assginments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assginment" do
    assert_difference('Assginment.count') do
      post :create, assginment: { end_date: @assginment.end_date, project_id: @assginment.project_id, start_date: @assginment.start_date, worker_id: @assginment.worker_id }
    end

    assert_redirected_to assginment_path(assigns(:assginment))
  end

  test "should show assginment" do
    get :show, id: @assginment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assginment
    assert_response :success
  end

  test "should update assginment" do
    patch :update, id: @assginment, assginment: { end_date: @assginment.end_date, project_id: @assginment.project_id, start_date: @assginment.start_date, worker_id: @assginment.worker_id }
    assert_redirected_to assginment_path(assigns(:assginment))
  end

  test "should destroy assginment" do
    assert_difference('Assginment.count', -1) do
      delete :destroy, id: @assginment
    end

    assert_redirected_to assginments_path
  end
end
