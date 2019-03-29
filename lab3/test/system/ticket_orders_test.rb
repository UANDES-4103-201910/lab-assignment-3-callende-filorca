require "application_system_test_case"

class TicketOrdersTest < ApplicationSystemTestCase
  setup do
    @ticket_order = ticket_orders(:one)
  end

  test "visiting the index" do
    visit ticket_orders_url
    assert_selector "h1", text: "Ticket Orders"
  end

  test "creating a Ticket order" do
    visit ticket_orders_url
    click_on "New Ticket Order"

    fill_in "Ticket", with: @ticket_order.Ticket_id
    fill_in "User", with: @ticket_order.User_id
    fill_in "Total", with: @ticket_order.total
    click_on "Create Ticket order"

    assert_text "Ticket order was successfully created"
    click_on "Back"
  end

  test "updating a Ticket order" do
    visit ticket_orders_url
    click_on "Edit", match: :first

    fill_in "Ticket", with: @ticket_order.Ticket_id
    fill_in "User", with: @ticket_order.User_id
    fill_in "Total", with: @ticket_order.total
    click_on "Update Ticket order"

    assert_text "Ticket order was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket order" do
    visit ticket_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket order was successfully destroyed"
  end
end
