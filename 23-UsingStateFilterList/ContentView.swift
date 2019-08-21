//
//  ContentView.swift
//  23-UsingStateFilterList
//
//  Created by Diego Salazar Arp on 13-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var dishes = Dish.all()
    
    @State private var isSpicy = false
    
    var body: some View {

        NavigationView {
            
            List{
                
                Toggle(isOn: $isSpicy) {
                    Text("Con picante")
                        .font(.subheadline)
                }
                ForEach(dishes.filter { $0.isSpicy == self.isSpicy }) { dish in
                    
                    HStack {
                        Image(dish.imageURL)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(15)
                            .shadow(radius: 10)
                            
                        
                        Text(dish.name)
                            .font(.title)
                        .lineLimit(nil)
                        
                        Spacer()
                        
                        
                        if(dish.isSpicy) {
                        Image("spicy")
                        .resizable()
                            .frame(width: 50, height:50)
                        }
                        
                    }
                }
            }.navigationBarTitle(Text("Menú"))
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
