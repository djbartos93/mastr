require 'test_helper'

class EngineerClassesControllerTest < ActionController::TestCase
  setup do
    @engineer_class = engineer_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engineer_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engineer_class" do
    assert_difference('EngineerClass.count') do
      post :create, engineer_class: { class_desc: @engineer_class.class_desc, eC_id: @engineer_class.eC_id, e_className: @engineer_class.e_className, enabled: @engineer_class.enabled }
    end

    assert_redirected_to engineer_class_path(assigns(:engineer_class))
  end

  test "should show engineer_class" do
    get :show, id: @engineer_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engineer_class
    assert_response :success
  end

  test "should update engineer_class" do
    patch :update, id: @engineer_class, engineer_class: { class_desc: @engineer_class.class_desc, eC_id: @engineer_class.eC_id, e_className: @engineer_class.e_className, enabled: @engineer_class.enabled }
    assert_redirected_to engineer_class_path(assigns(:engineer_class))
  end

  test "should destroy engineer_class" do
    assert_difference('EngineerClass.count', -1) do
      delete :destroy, id: @engineer_class
    end

    assert_redirected_to engineer_classes_path
  end
end
