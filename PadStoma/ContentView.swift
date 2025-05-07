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
                .font(.system(size: 50, weight: .regular, design: .default))
                .foregroundColor(Color.bluePrimary)
                
                Spacer()
            }
            
            Image("logo")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(maxWidth: 500, maxHeight: 300)
                  .padding()
                  //.border(Color.black)
            
            Spacer()

            
            Button(" Play ", systemImage: "play.fill"){
                print("Play")
            }
            .padding()
            .font(.system(size: 50, weight: .regular, design: .default))
            .foregroundColor(.white)
            .background(Color.bluePrimary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            
            Button(" Tools ", systemImage: "cross.case"){
                print("Play")
            }
            .padding()
            .font(.system(size: 50, weight: .regular, design: .default))
            .foregroundColor(.white)
            .background(Color.bluePrimary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
        }
        .padding()
        .background(Color(red: 208, green: 247, blue: 245))
        .overlay {
            Image("Nurse")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 600, maxHeight: 400)
                .padding()
                .offset(x: 450, y: 100)
        }
        .overlay {
            Image("StomaBag")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300, maxHeight: 200)
                .padding()
                .offset(x: -350, y: -300)
        }
                
    }
}

#Preview {
    ContentView()
}
