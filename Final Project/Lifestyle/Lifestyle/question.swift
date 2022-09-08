//
//  question.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 08/09/2022.
//

import SwiftUI

struct question: View {
    
    @State  var gender: String = ""
    @State  var Weight = ""
    @State  var Height = ""
    @State  var Age = ""
    @State  var Result = 0
    @State  var aab = true
    @State  var errorme = ""
    @State  var num = 0
    var body: some View {
        
            VStack(spacing:20){
                
                
                if aab == false {
                    NavigationLink(destination: appView()) {
                        Image(systemName: "chevron.right").offset(x: 160, y: 1).font(.system(size: 28)) }       }
                
                
                Image("im").resizable().scaledToFit().frame(width: 380, height: 290)
                
                
                
                TextField("weight",text: $Weight).padding().frame(width: 370, height: 50).background(.blue.opacity(0.05))
                    .cornerRadius(10)
                
                
                
            TextField("Height",text: $Height).padding().frame(width: 370, height: 50).background(.blue.opacity(0.05))
                    .cornerRadius(10)
                
                
                
            TextField("age",text: $Age).padding().frame(width: 370, height: 50).background(.blue.opacity(0.05))
                    .cornerRadius(10)
                
                
                
                
            TextField("gender",text: $gender).padding().frame(width: 370, height: 50).background(.blue.opacity(0.05))
                    .cornerRadius(10)
                
                
                
                
                
                
                
                Button("Count"){
                    Result =  getBMR(weight: Double(Weight) ?? 0.0, height: Double(Height) ?? 0.0, age: Int(Age) ?? 0, gender: gender)
                    if gender.isEmpty || Weight.isEmpty || Height.isEmpty || Age.isEmpty || Age == "\(num)" {
                        errorme = "error"
                        Result = 0
                        aab = true
                    }
                    if errorme == "error" && Result != 0 {
                        errorme = ""
                        aab = false
                    } else {
                        aab = false
                    }
                    
                }.frame(width: 200, height: 50).background(.indigo.opacity(0.8)).foregroundColor(.white).cornerRadius(10)
               
                Text("\(Result)").font(.system(size: 30)).font(.headline)
                Text("\(errorme)").foregroundColor(.red)
               
               

                   
            
                   
               
               
               
            }.padding()
    }
    
    func getBMR(weight:Double, height:Double, age:Int, gender: String)->Int{
        var BMR = 0.0
        var weightCalculation = 0.0
        var heightCalculation = 0.0
        var ageCalculaition = 0.0
        
        if gender == "Male" || gender == "male" {
            weightCalculation = 13.75 * toKilograms(weight: Double(Weight) ?? 0.0)
            heightCalculation = 5.0 * toCentimeters(height: Double(Height) ?? 0.0)
            ageCalculaition = 6.75 * Double(age)
            
            BMR = 66.47 + weightCalculation  + heightCalculation - ageCalculaition
            
            return Int(BMR)
            
        }
        else{
            weightCalculation = 9.56 * toKilograms(weight: Double(Weight) ?? 0.0)
            heightCalculation = 1.84 * toCentimeters(height: Double(Height) ?? 0.0)
            ageCalculaition = 4.67 * Double(age)
            
            BMR =  665.09 + weightCalculation + heightCalculation - ageCalculaition
            
            return Int(BMR)
        }
    }
    private func toKilograms(weight:Double)->Double{
        return weight/2.2
    }
    private func toCentimeters(height:Double)->Double{
        return height*2.54
    }
    
}

struct question_Previews: PreviewProvider {
    static var previews: some View {
        question()
    }
}
