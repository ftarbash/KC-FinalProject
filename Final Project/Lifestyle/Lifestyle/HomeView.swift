//
//  HomeView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 02/09/2022.
//

import SwiftUI

struct HomeView: View {
    @State var eaten = ""
    @Binding var Result:Int
    @State var ramain = 0
    var body: some View {
        ZStack {Color.yellow.opacity(0.5).ignoresSafeArea()
            VStack{
                
                Text("\(Result)").font(.system(size: 40)).fontWeight(.semibold)
                
                Text("-").fontWeight(.semibold).frame(width: 100, height: 30).font(.system(size: 70)).padding()
                
                TextField("calorie eat",text: $eaten).padding().frame(width: 280, height: 30).background(.black.opacity(0.05)).border(.indigo)
                Button("="){
                   ramain = remaining(result: Result, Eaten: Int(eaten) ?? 0)
                }.font(.system(size: 50))
                
                
                Text("\(ramain)").font(.system(size: 40)).fontWeight(.semibold)
                    
                    
            }
        }
        
    }
    func remaining(result:Int,Eaten:Int)-> Int{
       return result - Eaten
    }
    }
    

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(Result: .constant(0))
    }
}
