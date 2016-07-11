Given /^My account has been credited with (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  my_account.credit(amount) 
end

When /^I request (#{CAPTURE_CASH_AMOUNT})/ do |amount|
  teller.withdraw_from(my_account, amount)
end

Then /^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/ do |amount|
  expect(cash_slot.contents).to eq(amount)
end

Then /^the ballance of my account should be (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  expect(my_account.balance).to eq(amount), 
    "Expected the balance to be #{amount} but it was #{my_account.balance}" 
end 