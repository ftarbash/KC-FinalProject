//
//  questions.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 03/09/2022.
//

import SwiftUI

struct questions: View {
    var body: some View {
        VStack(spacing: 30){
            
            NavigationLink(destination: women() ){
                    Text("women") }
        .frame(width: 200, height: 50).background(.pink.opacity(0.3)).cornerRadius(10).foregroundColor(.white)
            
            NavigationLink(destination: men() ){
                    Text("men") }
        .frame(width: 200, height: 50).background(.blue).cornerRadius(10).foregroundColor(.white)
        }
    }
}

struct questions_Previews: PreviewProvider {
    static var previews: some View {
        questions()
    }
}
