When(/^add a budget$/) do |table|
  budget = table.hashes[0]
  visit = "http://localhost:9100/#/budgets/add"
  clear_then_enter_text 'Month', budget['month']
  clear_then_enter_text 'Amount', budget['amount']
  touch 'Save'
end

Then(/^you will see budgets$/) do |table|
  budget = table.hashes[0]
  visit = "http://localhost:9100/#/budgets"
  clear_then_enter_text 'Month', budget['month']
  clear_then_enter_text 'Amount', budget['amount']
end
