When(/^add a budget$/) do |table|
  budget = table.hashes[0]
  visit 'http://localhost:9100/#/budgets/add'
  clear_then_enter_text 'Month', budget['month']
  clear_then_enter_text 'Amount', budget['amount']
  touch 'Save'
end

Then(/^I can see the budget in the list$/) do |table|
  budget = table.hashes[0]
  wait_for_text budget['month']
  wait_for_text budget['amount']
end