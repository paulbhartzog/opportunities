require 'test_helper'

class TimeGlidersControllerTest < ActionController::TestCase
  setup do
    @time_glider = time_gliders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_gliders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_glider" do
    assert_difference('TimeGlider.count') do
      post :create, :time_glider => @time_glider.attributes
    end

    assert_redirected_to time_glider_path(assigns(:time_glider))
  end

  test "should show time_glider" do
    get :show, :id => @time_glider.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @time_glider.to_param
    assert_response :success
  end

  test "should update time_glider" do
    put :update, :id => @time_glider.to_param, :time_glider => @time_glider.attributes
    assert_redirected_to time_glider_path(assigns(:time_glider))
  end

  test "should destroy time_glider" do
    assert_difference('TimeGlider.count', -1) do
      delete :destroy, :id => @time_glider.to_param
    end

    assert_redirected_to time_gliders_path
  end
end
