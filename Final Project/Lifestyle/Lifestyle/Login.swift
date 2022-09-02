//
//  Login.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 02/09/2022.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        ZStack{Color.indigo.opacity(0.6).ignoresSafeArea()
                VStack(spacing:20){
                    Text("Login")
                        .font(.system(size: 40)).padding()
                    TextField("Email",text: $email).padding().frame(width: 350, height: 40).background(.black.opacity(0.05)).cornerRadius(10)
                SecureField("password",text: $password).padding().frame(width: 350, height: 40).background(.black.opacity(0.05)).cornerRadius(10)
                    
                    NavigationLink(destination: appView()){
                            Text("login")
                    }.padding().frame(width: 100, height: 60).background(.indigo).cornerRadius(10).foregroundColor(.white).font(.system(size: 25))
//                    Button("login"){
//                        appView()
//                    }.padding().frame(width: 100, height: 60).background(.indigo).cornerRadius(10).foregroundColor(.white).font(.system(size: 25))
                    Text("you dont have account?").foregroundColor(.white)
                
                    NavigationLink(destination: buttonView() ){
                            Text("create account")
                        
                           
                    }
                }
                        }
        }
    }
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
