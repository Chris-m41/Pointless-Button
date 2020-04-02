//
//  ContentView.swift
//  Pointless Button
//
//  Created by Administrator on 4/1/20.
//  Copyright © 2020 Chris. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    var body: some View {
        Color.black
            .overlay(
        VStack{
            Text("Pointless Button\n")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
            
            Text("Careful it is pointless\n\nHit the number to reset\n\nHow high can you go before you\nget bored?")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.white)

            Button(action: {
                self.count = 0
            }) {
                Text("\(count)")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    
                    
            }
            
                
            Button(action:{
                self.count += 1
            }) {
                Text("Push me")
            }
            .frame(width: 150.0, height: 150.0)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(100)
            .padding(.top, 350)
        })
        .edgesIgnoringSafeArea(.vertical)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
