//
//  ContentView.swift
//  safe_with_dignity
//
//  Created by Марина on 04.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Text("Let's safe a bit")
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .fontWeight(.medium)
                    
                HStack {
                    Button(action: {
                       
                    }, label: {
                        Text("Yay")
                            .foregroundStyle(.pink)
                            .font(.headline)
                            .frame(width: 150, height: 60)
                            .background(Color.white.cornerRadius(10))
                    })
                    
                    Button(action: {}, label: {
                        Text("Naah, I'm fine")
                            .foregroundStyle(.pink)
                            .font(.headline)
                            .frame(width: 150, height: 60)
                            .background(Color.white.cornerRadius(10))
                    })
                }
               

            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
