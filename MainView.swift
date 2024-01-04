//
//  MainView.swift
//  safe_with_dignity
//
//  Created by Марина on 04.01.2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var coisine: [String] = ["Chinese", "Japanese", "Peruvian", "Vietnamese", "Russian", "Spanish"]
    
    @State private var chosenCoisine: String = ""
    
    @State private var choiceMade: Bool = false
    
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea(edges: .all)
            
            VStack(alignment: .center) {
                Text("Wich coisine we chose today?")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .fontWeight(.medium)
                
                Button(action: {
                    randomNumber()
                    
                    withAnimation(.easeInOut) {
                        choiceMade = true
                    }
                }, label: {
                    Text("Chose the coisine")
                        .foregroundStyle(.pink)
                        .fontWeight(.semibold)
                        .font(.headline)
                        .padding()
                        .frame(width: 180, height: 60)
                        .background(Color.white.cornerRadius(10))
                })
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 350, height: 150)
                        .foregroundStyle(Color.white)
                        .opacity(choiceMade ? 0.8 : 0.0)
                        .padding()
                    
                    Text(chosenCoisine)
                        .foregroundStyle(.pink)
                        .font(.title)
                        .fontWeight(.bold)
                }
                
            }
            .padding()
            
        }
    }
    
    func randomNumber () {
        chosenCoisine = coisine.randomElement()!
    }
}

#Preview {
    MainView()
}
