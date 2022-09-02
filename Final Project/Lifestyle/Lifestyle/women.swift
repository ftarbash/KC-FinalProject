//
//  women.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 03/09/2022.
//

import SwiftUI

struct women: View {
    @State var weight = ""
    @State var height = ""
    @State var age = ""
    
    var body: some View {
        VStack(spacing: 30){
        TextField("enter your weight",text: $weight)
        
        TextField("enter your height",text: $height)
        
        TextField("enter your age",text: $age)
            
            
        }.padding()
    }
}


struct women_Previews: PreviewProvider {
    static var previews: some View {
        women()
    }
}
