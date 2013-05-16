require 'test_helper'

class Jimbo2sControllerTest < ActionController::TestCase
  setup do
    @jimbo2 = jimbo2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jimbo2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jimbo2" do
    assert_difference('Jimbo2.count') do
      post :create, jimbo2: { adresse: @jimbo2.adresse, age: @jimbo2.age }
    end

    assert_redirected_to jimbo2_path(assigns(:jimbo2))
  end

  test "should show jimbo2" do
    get :show, id: @jimbo2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jimbo2
    assert_response :success
  end

  test "should update jimbo2" do
    put :update, id: @jimbo2, jimbo2: { adresse: @jimbo2.adresse, age: @jimbo2.age }
    assert_redirected_to jimbo2_path(assigns(:jimbo2))
  end

  test "should destroy jimbo2" do
    assert_difference('Jimbo2.count', -1) do
      delete :destroy, id: @jimbo2
    end

    assert_redirected_to jimbo2s_path
  end
end
