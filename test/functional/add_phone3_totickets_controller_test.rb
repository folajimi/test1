require 'test_helper'

class AddPhone3ToticketsControllerTest < ActionController::TestCase
  setup do
    @add_phone3_toticket = add_phone3_totickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_phone3_totickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_phone3_toticket" do
    assert_difference('AddPhone3Toticket.count') do
      post :create, add_phone3_toticket: { phone: @add_phone3_toticket.phone }
    end

    assert_redirected_to add_phone3_toticket_path(assigns(:add_phone3_toticket))
  end

  test "should show add_phone3_toticket" do
    get :show, id: @add_phone3_toticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_phone3_toticket
    assert_response :success
  end

  test "should update add_phone3_toticket" do
    put :update, id: @add_phone3_toticket, add_phone3_toticket: { phone: @add_phone3_toticket.phone }
    assert_redirected_to add_phone3_toticket_path(assigns(:add_phone3_toticket))
  end

  test "should destroy add_phone3_toticket" do
    assert_difference('AddPhone3Toticket.count', -1) do
      delete :destroy, id: @add_phone3_toticket
    end

    assert_redirected_to add_phone3_totickets_path
  end
end
