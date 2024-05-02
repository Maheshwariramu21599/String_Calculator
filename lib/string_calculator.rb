class StringCalculator
    def self.add(numbers)
      return 0 if numbers.empty?

      delimiter = ','
      if numbers.start_with?("//")
        delimiter, numbers = extract_delimiter(numbers)
      end
  
      nums = numbers.split(/[#{delimiter}\n]/).map(&:to_i)
      nums.select! { |num| num <= 1000 } # Ignore numbers larger than 1000
  
      negatives = nums.select(&:negative?)
      if negatives.any?
        raise "negatives not allowed: #{negatives.join(', ')}"
      end
  
      nums.reduce(0, :+)
    end
  
    private
  
    def self.extract_delimiter(numbers)
        delimiter_match = numbers.match(/\/\/\[?(.+?)\]\n/)
        delimiter = delimiter_match ? Regexp.escape(delimiter_match[1]) : ','
        if delimiter_match
          numbers = numbers[(delimiter_match[0].length)..-1]
        else
          delimiter_match = numbers.match(/\/\/(.)\n/)
          delimiter = delimiter_match[1] if delimiter_match
          numbers = numbers[(delimiter_match[0].length)..-1] if delimiter_match
        end
        [delimiter, numbers]
    end
      
  end
  