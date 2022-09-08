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
            Text("home")
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                    HomeView(Result: $Result)
                   
                                    }
            Text("setting")
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("food")
                    foodView()
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
