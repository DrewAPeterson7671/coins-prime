require 'prime'

class FindPrime

    def prime_easy(num)
        Prime.each(num) {|n| p n}
    end

    def prime_less_easy(num)
        (2..num).map{ |n| primer(n) }.compact
    end

    private
    def primer(num)
        (num-2).times {|i| return nil if (num.%(i+2) == 0) }
        num
    end
end
