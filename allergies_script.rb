#!/user/bin/ruby

require ('./lib/coins.rb')


p "please enter how many pennies"
num = gets.chomp.to_i

puts "Your Coins"
p count = Count.new.coins(num)
