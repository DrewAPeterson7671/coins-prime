class Count
    @@dict = {Quarters: 25, Dimes: 10, Nickels: 5}

    def coins(num)
        @@dict.reduce({Pennies: num}) do |acc, (key, val)|
            acc[key] = ((acc[:Pennies] - val) >= 0) ? (acc[:Pennies]/val).floor : 0
            acc[:Pennies] -= (acc[key] * val)
            acc
        end
    end
end

puts Count.new.coins(49)