#!/user/bin/ruby

require ('./lib/primes.rb')


p "please enter a number"
num = gets.chomp.to_i

puts "The Easy Way"
first_prime = FindPrimes.new.prime_auto(num)
puts "The Hard Way"
p second_prime = FindPrimes.new.prime_manual(num)
