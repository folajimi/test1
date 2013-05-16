require 'test_helper'

class AddSexeToJimbolansControllerTest < ActionController::TestCase
  setup do
    @add_sexe_to_jimbolan = add_sexe_to_jimbolans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_sexe_to_jimbolans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_sexe_to_jimbolan" do
    assert_difference('AddSexeToJimbolan.count') do
      post :create, add_sexe_to_jimbolan: { sexe: @add_sexe_to_jimbolan.sexe }
    end

    assert_redirected_to add_sexe_to_jimbolan_path(assigns(:add_sexe_to_jimbolan))
  end

  test "should show add_sexe_to_jimbolan" do
    get :show, id: @add_sexe_to_jimbolan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_sexe_to_jimbolan
    assert_response :success
  end

  test "should update add_sexe_to_jimbolan" do
    put :update, id: @add_sexe_to_jimbolan, add_sexe_to_jimbolan: { sexe: @add_sexe_to_jimbolan.sexe }
    assert_redirected_to add_sexe_to_jimbolan_path(assigns(:add_sexe_to_jimbolan))
  end

  test "should destroy add_sexe_to_jimbolan" do
    assert_difference('AddSexeToJimbolan.count', -1) do
      delete :destroy, id: @add_sexe_to_jimbolan
    end

    assert_redirected_to add_sexe_to_jimbolans_path
  end
end
