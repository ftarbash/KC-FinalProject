//
//  foodView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 08/09/2022.
//

import SwiftUI

struct foodView: View {
    var body: some View {
        ZStack {Color.cyan.ignoresSafeArea()
            
            NavigationLink(destination: cookiesResipe()) {
                HStack{
                    Image("cook").resizable().scaledToFit().frame(width: 100, height: 100)
                    Text("Cookies resipe").font(.system(size: 30)).fontWeight(.semibold).foregroundColor(Color.gray)
                }.frame(width: 300, height: 120).background(.black.opacity(0.5)).cornerRadius(10)
            }
            
        }
    }
}

struct foodView_Previews: PreviewProvider {
    static var previews: some View {
        foodView()
    }
}
