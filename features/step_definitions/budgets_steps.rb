When(/^add a budget$/) do |table|
  # sleep 1
  visit 'http://localhost:9100/#/budgets/add'

  table.hashes.each do |budget|

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

Then(/^I can see an alert$/) do |table|
  table.hashes.each do |budget|
    page.should have_content(budget['error msg'])
  end
end
