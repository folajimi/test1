require 'test_helper'

class AddPone2ToTicketsControllerTest < ActionController::TestCase
  setup do
    @add_pone2_to_ticket = add_pone2_to_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_pone2_to_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_pone2_to_ticket" do
    assert_difference('AddPone2ToTicket.count') do
      post :create, add_pone2_to_ticket: { phone2: @add_pone2_to_ticket.phone2 }
    end

    assert_redirected_to add_pone2_to_ticket_path(assigns(:add_pone2_to_ticket))
  end

  test "should show add_pone2_to_ticket" do
    get :show, id: @add_pone2_to_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_pone2_to_ticket
    assert_response :success
  end

  test "should update add_pone2_to_ticket" do
    put :update, id: @add_pone2_to_ticket, add_pone2_to_ticket: { phone2: @add_pone2_to_ticket.phone2 }
    assert_redirected_to add_pone2_to_ticket_path(assigns(:add_pone2_to_ticket))
  end

  test "should destroy add_pone2_to_ticket" do
    assert_difference('AddPone2ToTicket.count', -1) do
      delete :destroy, id: @add_pone2_to_ticket
    end

    assert_redirected_to add_pone2_to_tickets_path
  end
end
