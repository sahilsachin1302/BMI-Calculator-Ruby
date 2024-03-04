class BMICalculator
    def initialize(weight, height)
      @weight = weight
      @height = height
    end
  
    def calculate_bmi
      (@weight / (@height * @height)).round(2)
    end
  
    def interpret_bmi
      bmi = calculate_bmi
      if bmi < 18.5
        "Underweight"
      elsif bmi >= 18.5 && bmi < 25
        "Normal weight"
      elsif bmi >= 25 && bmi < 30
        "Overweight"
      else
        "Obese"
      end
    end
  end
  
  puts "BMI Calculator"
  puts "Enter your weight (in kg):"
  weight = gets.chomp.to_f
  puts "Enter your height (in meters):"
  height = gets.chomp.to_f
  
  calculator = BMICalculator.new(weight, height)
  bmi = calculator.calculate_bmi
  interpretation = calculator.interpret_bmi
  
  puts "Your BMI is: #{bmi}"
  puts "Interpretation: #{interpretation}"