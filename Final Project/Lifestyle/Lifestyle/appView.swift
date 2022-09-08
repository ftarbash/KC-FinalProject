//
//  appView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 02/09/2022.
//

import SwiftUI

struct appView: View {
    var body: some View {
        
        VStack {
            
           
        TabView{
            Text("home")
                .tabItem {
                    Image(systemName: "house")
                   HomeView()
                                    }
            Text("setting")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    SettingsView()
                                    }
            Text("profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    profileView()
                                    }
            
            
            
                
        }
        }
    }
}

struct appView_Previews: PreviewProvider {
    static var previews: some View {
        appView()
    }
}
