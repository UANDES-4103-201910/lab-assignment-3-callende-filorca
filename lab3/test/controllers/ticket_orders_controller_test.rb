require 'test_helper'

class TicketOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_order = ticket_orders(:one)
  end

  test "should get index" do
    get ticket_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_order_url
    assert_response :success
  end

  test "should create ticket_order" do
    assert_difference('TicketOrder.count') do
      post ticket_orders_url, params: { ticket_order: { Ticket_id: @ticket_order.Ticket_id, User_id: @ticket_order.User_id, total: @ticket_order.total } }
    end

    assert_redirected_to ticket_order_url(TicketOrder.last)
  end

  test "should show ticket_order" do
    get ticket_order_url(@ticket_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_order_url(@ticket_order)
    assert_response :success
  end

  test "should update ticket_order" do
    patch ticket_order_url(@ticket_order), params: { ticket_order: { Ticket_id: @ticket_order.Ticket_id, User_id: @ticket_order.User_id, total: @ticket_order.total } }
    assert_redirected_to ticket_order_url(@ticket_order)
  end

  test "should destroy ticket_order" do
    assert_difference('TicketOrder.count', -1) do
      delete ticket_order_url(@ticket_order)
    end

    assert_redirected_to ticket_orders_url
  end
end
