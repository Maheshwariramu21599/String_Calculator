# StringCalculator
The String Calculator is a simple tool that can add numbers provided as strings. It supports different delimiters, ignores numbers larger than 1000, and throws an exception for negative numbers. This project was developed using Test-driven Development (TDD) practices.

Input: a string of comma separated numbers 

Output: an integer, sum of the numbers  

**Examples:** 

**Input:** "", "1", "1,5" 

**Output:** 0, 1, 6

**Usage**
You can use the String Calculator by calling the add method and passing a string of numbers as input. 

**Here's how to use it:**

require_relative 'lib/string_calculator'

result = StringCalculator.add("1,2,3")
puts "The sum is: #{result}"

**Method Signature**

The add method signature is as follows:

StringCalculator.add(numbers)

numbers: A string containing numbers separated by delimiters. For example, "1,2,3".

**Test-driven Development (TDD)**
This project was developed using Test-driven Development (TDD) practices. This means that tests were written before the actual implementation code. Each feature or change was driven by the creation of failing tests, followed by writing the code to make those tests pass.

**Features**
1. Handles up to two numbers separated by commas.
2. Supports an unknown amount of numbers.
3. Allows new lines between numbers.
4. Supports different delimiters.
5. Throws an exception for negative numbers.
6. Ignores numbers larger than 1000.
7. Supports delimiters of any length.
8. Allows multiple delimiters.
