require 'test_helper'

class AddPhoneToNouveauTicketsControllerTest < ActionController::TestCase
  setup do
    @add_phone_to_nouveau_ticket = add_phone_to_nouveau_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_phone_to_nouveau_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_phone_to_nouveau_ticket" do
    assert_difference('AddPhoneToNouveauTicket.count') do
      post :create, add_phone_to_nouveau_ticket: { phone: @add_phone_to_nouveau_ticket.phone }
    end

    assert_redirected_to add_phone_to_nouveau_ticket_path(assigns(:add_phone_to_nouveau_ticket))
  end

  test "should show add_phone_to_nouveau_ticket" do
    get :show, id: @add_phone_to_nouveau_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_phone_to_nouveau_ticket
    assert_response :success
  end

  test "should update add_phone_to_nouveau_ticket" do
    put :update, id: @add_phone_to_nouveau_ticket, add_phone_to_nouveau_ticket: { phone: @add_phone_to_nouveau_ticket.phone }
    assert_redirected_to add_phone_to_nouveau_ticket_path(assigns(:add_phone_to_nouveau_ticket))
  end

  test "should destroy add_phone_to_nouveau_ticket" do
    assert_difference('AddPhoneToNouveauTicket.count', -1) do
      delete :destroy, id: @add_phone_to_nouveau_ticket
    end

    assert_redirected_to add_phone_to_nouveau_tickets_path
  end
end
