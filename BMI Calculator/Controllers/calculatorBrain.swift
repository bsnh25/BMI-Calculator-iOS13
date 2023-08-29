import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmiValue = (weight / (height*height))
        
        let color = (
            underwight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),
            normalWeight: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),
            overweight: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
                )
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more rice", color: color.underwight)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Keep it fit", color: color.normalWeight)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat little rice", color: color.overweight)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "We can't suggest anymore"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
}
