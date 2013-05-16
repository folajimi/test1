require 'test_helper'

class JimbolandsControllerTest < ActionController::TestCase
  setup do
    @jimboland = jimbolands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jimbolands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jimboland" do
    assert_difference('Jimboland.count') do
      post :create, jimboland: { adresse: @jimboland.adresse, age: @jimboland.age, nom: @jimboland.nom, taille: @jimboland.taille }
    end

    assert_redirected_to jimboland_path(assigns(:jimboland))
  end

  test "should show jimboland" do
    get :show, id: @jimboland
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jimboland
    assert_response :success
  end

  test "should update jimboland" do
    put :update, id: @jimboland, jimboland: { adresse: @jimboland.adresse, age: @jimboland.age, nom: @jimboland.nom, taille: @jimboland.taille }
    assert_redirected_to jimboland_path(assigns(:jimboland))
  end

  test "should destroy jimboland" do
    assert_difference('Jimboland.count', -1) do
      delete :destroy, id: @jimboland
    end

    assert_redirected_to jimbolands_path
  end
end
