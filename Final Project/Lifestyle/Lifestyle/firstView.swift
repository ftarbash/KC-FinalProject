//
//  firstView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 07/09/2022.
//

import SwiftUI

struct firstView: View {
    var body: some View {
        
        
        VStack {
            Image("life").resizable().scaledToFit().frame(width: 400, height: 500).padding(-30)
            NavigationLink(destination: Login()) {
                Text("Get Started").frame(width: 200, height: 30).padding().background(.indigo).foregroundColor(.white).cornerRadius(10)
            }
        }
        
        
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        firstView()
    }
}
