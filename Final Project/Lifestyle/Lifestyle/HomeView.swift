//
//  HomeView.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 02/09/2022.
//

import SwiftUI

struct HomeView: View {
    @State var WEIGHT = ""
    @State var AGE = ""
    @State var HEIGHT = ""
    var body: some View {
        VStack{
            
                TextField("h",text: $WEIGHT)
                
                
            }
        
    }
    }
    

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
