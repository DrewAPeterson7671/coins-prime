class Count
    @@dict = {Quarters: 25, Dimes: 10, Nickels: 5}

    def coins(num)
        @@dict.reduce( {TOTAL: num, Pennies: num} ) do |acc, (key, val)|
            acc[key] = (acc[:Pennies]/val).floor
            acc[:Pennies] -= (acc[key] * val)
            acc
        end
    end
end

puts Count.new.coins(31)
# acc[:Pennies] = acc.delete(:Pennies)
