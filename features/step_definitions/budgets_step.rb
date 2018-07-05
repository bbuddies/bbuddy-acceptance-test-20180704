When(/^add a budget$/) do |table|
  budget = table.hashes[0]
  visit "http://localhost:9100/#/budgets/add"

  clear_then_enter_text 'Month', budget['month']
  clear_then_enter_text 'Amount', budget['amount']
  touch 'Save'
end

Then(/^you will see budgets$/) do |table|
  budget = table.hashes[0]
  visit "http://localhost:9100/#/budgets"
  table = page.find_by_id('budget-table')
  expect(table).to have_content(budget['month'])
  expect(table).to have_content(budget['amount'])
end

Given(/^having a budget$/) do |table|
  budget = table.hashes[0]
  Budget.create budget
end

When(/^update a budget$/) do |table|
  budget = table.hashes[0]
  touch 'Budgets'
  touch 'Add'

  clear_then_enter_text 'Month', budget['month']
  clear_then_enter_text 'Amount', budget['amount']
  touch 'Save'
end
