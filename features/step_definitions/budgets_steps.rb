When(/^add a budget$/) do |table|
  table.hashes.each do |budget|
    visit 'http://localhost:9100/#/budgets/add'
    clear_then_enter_text 'month', budget['month']
    clear_then_enter_text 'amount', budget['amount']
    touch 'Save'
  end

end

Then(/^I can see the budget in the list$/) do |table|

  table.hashes.each do |budget|
    wait_for_text budget['month']
    wait_for_text budget['amount']
  end

end