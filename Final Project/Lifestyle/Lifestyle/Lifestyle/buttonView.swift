//
//  buttonView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 30/08/2022.
//

import SwiftUI

struct buttonView: View {
    @State var first = ""
    @State var last = ""
    @State var EMAIL = ""
    @State var PASSword = ""
    var body: some View {
        ZStack{Color.blue.opacity(0.8).ignoresSafeArea()
            VStack{
                Text("signup").font(.system(size: 40)).padding()
                TextField("first name",text: $first).padding().frame(width: 350, height: 40).background(.black.opacity(0.05)).cornerRadius(10)
                TextField("last name",text: $last).padding().frame(width: 350, height: 40).background(.black.opacity(0.05)).cornerRadius(10)
                                
                
                TextField("Email",text: $EMAIL).padding().frame(width: 350, height: 40).background(.black.opacity(0.05)).cornerRadius(10)
            SecureField("password",text: $PASSword).padding().frame(width: 350, height: 40).background(.black.opacity(0.05)).cornerRadius(10)
            
                
                NavigationLink(destination: appView()){
                        Text("signup")
                }.padding().background(.yellow).foregroundColor(.black).cornerRadius(10)
                
                
            
                
            }
        }
    }
    
        }



struct buttonView_Previews: PreviewProvider {
    static var previews: some View {
        buttonView()
    }
}
