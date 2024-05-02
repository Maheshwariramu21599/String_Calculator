class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
    
        nums = numbers.split(/[\n,]/).map(&:to_i)
    
        nums.reduce(0, :+)
    end
    
end