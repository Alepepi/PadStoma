//
//  ContentView.swift
//  PadStoma
//
//  Created by Alejandro Ollivier Ochoa on 5/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            HStack{
                Button("", systemImage: "gearshape.fill"){
                    print("Play")
                }
                .padding()
                .position()
                .font(.system(size: 50, weight: .regular, design: .default))
                .foregroundColor(.black)
                
                Text("Stoma Training")
                    .font(.system(size: 60, weight: .bold, design: .default))
                    .padding()
            }
            .background(Color(red: 208, green: 247, blue: 245))
            .padding()
            
            Button(" Play ", systemImage: "play.fill"){
                print("Play")
            }
            .padding()
            .font(.system(size: 50, weight: .regular, design: .default))
            .foregroundColor(.white)
            .background(Color(red: 0, green: 89, blue: 84))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            
            Button(" Tools ", systemImage: "gearshape.fill"){
                print("Play")
            }
            .padding()
            .font(.system(size: 50, weight: .regular, design: .default))
            .foregroundColor(.white)
            .background(Color(red: 0, green: 89, blue: 84))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
        .background(Color(red: 208, green: 247, blue: 245))
    }
}

#Preview {
    ContentView()
}
