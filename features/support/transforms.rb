CAPTURE_CASH_AMOUNT = Transform /^([£|\$|€]\d+)$/ do |money|
  Monetize.parse(money)
end