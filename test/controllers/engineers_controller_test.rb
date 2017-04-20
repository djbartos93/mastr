require 'test_helper'

class EngineersControllerTest < ActionController::TestCase
  setup do
    @engineer = engineers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engineers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engineer" do
    assert_difference('Engineer.count') do
      post :create, engineer: { accepted_projects: @engineer.accepted_projects, class: @engineer.class, e_id: @engineer.e_id, enabled: @engineer.enabled, full_name: @engineer.full_name, status: @engineer.status }
    end

    assert_redirected_to engineer_path(assigns(:engineer))
  end

  test "should show engineer" do
    get :show, id: @engineer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engineer
    assert_response :success
  end

  test "should update engineer" do
    patch :update, id: @engineer, engineer: { accepted_projects: @engineer.accepted_projects, class: @engineer.class, e_id: @engineer.e_id, enabled: @engineer.enabled, full_name: @engineer.full_name, status: @engineer.status }
    assert_redirected_to engineer_path(assigns(:engineer))
  end

  test "should destroy engineer" do
    assert_difference('Engineer.count', -1) do
      delete :destroy, id: @engineer
    end

    assert_redirected_to engineers_path
  end
end
