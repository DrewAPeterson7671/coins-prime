class Allergies
    @@dict = {
        cats: 128,
        pollen: 64,
        chocolate: 32,
        tomatoes: 16,
        strawberries: 8,
        shellfish: 4,
        peanuts: 2,
        eggs: 1
    }

    def find_allergens(score)
        @@dict.reduce([score]) do |acc, (key, val)|
            if (acc[0] >= val)
                acc[0] -= val
                acc.push(key)
            end
            acc.reject {|e| e == 0}
        end
    end
end
