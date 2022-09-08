//
//  cookiesResipe.swift
//  Lifestyle
//
//  Created by Fatma Alarbash on 08/09/2022.
//

import SwiftUI

struct cookiesResipe: View {
    var body: some View {
        ScrollView {
            VStack(spacing:30){
            VStack(spacing:30){
                Text("Ingredients for 12 cookies")
                    .fontWeight(.heavy)
                Text("½ cup granulated sugar (100 g)")
                Text("¾ cup brown sugar (165 g), packed")
                Text("1 teaspoon salt")
                Text("½ cup unsalted butter (115 g), melted")
                Text("1 egg")
                Text("1 teaspoon vanilla extract")
                Text("1 ¼ cups all-purpose flour (155 g)")
                Text("½ teaspoon baking soda")
                Text("4 oz milk or semi-sweet chocolate chunks (110 g)")}
            
                VStack(spacing:30){
                Text("4 oz dark chocolate chunk (110 g), or your preference")
                Text("Preparation").fontWeight(.heavy)
                Text("In a large bowl, whisk together the sugars, salt, and butter until a paste forms with no lumps.")
                Text("Whisk in the egg and vanilla, beating until light ribbons fall off the whisk and remain for a short while before falling back into the mixture.")
                Text("Sift in the flour and baking soda, then fold the mixture with a spatula (Be careful not to overmix, which would cause the gluten in the flour to toughen resulting in cakier cookies).")
                Text("Fold in the chocolate chunks, then chill the dough for at least 30 minutes. For a more intense toffee-like flavor and deeper color, chill the dough overnight. The longer the dough rests, the more complex its flavor will be.")
                Text("Preheat oven to 350°F (180°C). Line a baking sheet with parchment paper.")
                Text("Scoop the dough with an ice-cream scoop onto a parchment paper-lined baking sheet, leaving at least 4 inches (10 cm) of space between cookies and 2 inches (5 cm) of space from the edges of the pan so that the cookies can spread evenly.")
                Text("Bake for 12-15 minutes, or until the edges have started to barely brown.")
                    VStack(spacing:30){
                Text("Cool completely before serving.")
                    Text("Enjoy!")
                    }
                    
                }
            
            
            
            
            }
        }.padding()
        
    }
}

struct cookiesResipe_Previews: PreviewProvider {
    static var previews: some View {
        cookiesResipe()
    }
}
