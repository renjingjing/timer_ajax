require 'test_helper'

class CounttimesControllerTest < ActionController::TestCase
  setup do
    @counttime = counttimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:counttimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create counttime" do
    assert_difference('Counttime.count') do
      post :create, counttime: { sec: @counttime.sec }
    end

    assert_redirected_to counttime_path(assigns(:counttime))
  end

  test "should show counttime" do
    get :show, id: @counttime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @counttime
    assert_response :success
  end

  test "should update counttime" do
    patch :update, id: @counttime, counttime: { sec: @counttime.sec }
    assert_redirected_to counttime_path(assigns(:counttime))
  end

  test "should destroy counttime" do
    assert_difference('Counttime.count', -1) do
      delete :destroy, id: @counttime
    end

    assert_redirected_to counttimes_path
  end
end
