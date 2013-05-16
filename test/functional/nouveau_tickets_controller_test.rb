require 'test_helper'

class NouveauTicketsControllerTest < ActionController::TestCase
  setup do
    @nouveau_ticket = nouveau_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nouveau_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nouveau_ticket" do
    assert_difference('NouveauTicket.count') do
      post :create, nouveau_ticket: { adress: @nouveau_ticket.adress, date: @nouveau_ticket.date, email_address: @nouveau_ticket.email_address, name: @nouveau_ticket.name, price: @nouveau_ticket.price, seat_id: @nouveau_ticket.seat_id }
    end

    assert_redirected_to nouveau_ticket_path(assigns(:nouveau_ticket))
  end

  test "should show nouveau_ticket" do
    get :show, id: @nouveau_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nouveau_ticket
    assert_response :success
  end

  test "should update nouveau_ticket" do
    put :update, id: @nouveau_ticket, nouveau_ticket: { adress: @nouveau_ticket.adress, date: @nouveau_ticket.date, email_address: @nouveau_ticket.email_address, name: @nouveau_ticket.name, price: @nouveau_ticket.price, seat_id: @nouveau_ticket.seat_id }
    assert_redirected_to nouveau_ticket_path(assigns(:nouveau_ticket))
  end

  test "should destroy nouveau_ticket" do
    assert_difference('NouveauTicket.count', -1) do
      delete :destroy, id: @nouveau_ticket
    end

    assert_redirected_to nouveau_tickets_path
  end
end
