//
//  ContentView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 29/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongusername = 0
    @State private var wrongpassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{Color.indigo.opacity(0.6).ignoresSafeArea()
               
            }
            
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
