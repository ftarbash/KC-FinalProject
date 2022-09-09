//
//  appView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 02/09/2022.
//

import SwiftUI

struct appView: View {
    @Binding var Result:Int
    var body: some View {
        
         
            VStack {
                
               
            TabView{
                HomeView(Result: $Result)
                    .tabItem {
                        Image(systemName: "house")
                        Text("home")
                        
                       
                                        }
                foodView()
                    .tabItem {
                        Image(systemName: "fork.knife")
                        Text("food")
                       
                                        }
                
                
                
                
                    
            
            }
        }
    }
}

struct appView_Previews: PreviewProvider {
    static var previews: some View {
        appView(Result: .constant(0))
    }
}
