//
//  Login.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 02/09/2022.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct Login: View {
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    @State var anything = false
    @State var name = ""
    @State var color = Color.red
    
    var body: some View {
        
            ScrollView{
            VStack(spacing:16){
                    
                
                Picker(selection: $isLoginMode, label: Text("Picker here")) {
                    Text("Login")
                        .tag(true)
                    Text("Create Account")
                        .tag(false)
                }.pickerStyle(SegmentedPickerStyle())
                
                   
                        
                Image(systemName: "person.fill").font(.system(size: 70)).padding().foregroundColor(.indigo)
                                                
                
                
                TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(10)
                SecureField("Password", text: $password)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(10)
                
                if isLoginMode == false {
                    TextField("Name",text: $name)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
           
                Button {
                    handleAction()
                } label: {
                    HStack{
                        Spacer()
                        Text(isLoginMode ? "Log In" : "Create Account").foregroundColor(.white).padding(.vertical, 10)
                            .font(.system(size: 20, weight: .semibold))
                        Spacer()
                    }.background(Color.indigo).cornerRadius(10)
                }
                
                
                Text(self.errorMessage).foregroundColor(color)
                
                if anything == true {
                    NavigationLink(destination: question()) {
                        Image(systemName: "arrow.right")
                    }
                    if  anything == false {
                        Text("error")
                    }
                }
                }.padding()
                
            }.background(Color(.init(white: 0, alpha: 0.05)).ignoresSafeArea())
            .navigationTitle(isLoginMode ? "Log In" : "Create Account")
            .navigationViewStyle(StackNavigationViewStyle())
                }
            
            
        
        
    private func handleAction(){
        if isLoginMode {
            loginUser()
        } else{
            createNewAccount()
            //print("regester new account inside firebase Auth and then store image")
        }
    }
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed to create user:", err)
                self.errorMessage = "Failed to login user"
                return
            }
            print("successfully logged in user: \(result?.user.uid ?? "")")
            
            self.errorMessage = "successfully login user"
           anything = true
            color = Color.green

        }
    }
    @State var errorMessage = ""
    
    private func createNewAccount() {
        Auth.auth().createUser(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed to create user:", err)
                self.errorMessage = "Failed to create user"
                return
            }
            print("successfully create user: \(result?.user.uid ?? "")")
            
            self.errorMessage = "successfully create user"
            anything = true
            color = Color.green
        }
       
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
