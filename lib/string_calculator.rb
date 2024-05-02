class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
    
        nums = numbers.split(/[\n,]/).map(&:to_i)
    
        negatives = nums.select(&:negative?)
        if negatives.any?
            raise "negatives not allowed: #{negatives.join(', ')}"
        end

        nums.reduce(0, :+)
    
    end
    
end