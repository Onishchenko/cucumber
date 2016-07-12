# Before do
#   puts "Go!"
# end

# After do
#   puts "Stop!"
# end

# Before do |scenario|
#   puts "Starting scenario #{scenario.name}"
# end

# After do |scenario|
#   puts "Oh dear" if scenario.failed?
# end

# Around do |scenario, block|
#   puts "About to run #{scenario.name}"
#   block.call
#   puts "------------------------------"
#   block.call
#   puts "Finished running #{scenario.name}"
# end

Before do
  BalanceStore.new.balance = 0
  TransactionQueue.clear
end