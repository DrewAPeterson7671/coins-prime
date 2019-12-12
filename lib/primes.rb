require 'prime'

class FindPrimes
    def prime_auto(num)
        (2..num).map{ |n| Prime.prime?(n) ? n : nil}.compact
    end

    def prime_manual(num)
        (2..num).map{ |n| is_prime?(n) }.compact
    end

    private
    def is_prime?(num)
        (num-2).times {|i| return nil if (num.%(i+2) == 0) }
        num
    end
end
