//
//  ContentView.swift
//  Spider-Man Adventure Story
//
//  Created by richard Haynes on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("spiderman-headshot")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("The Vulture II")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    Text("A Tale From the Marvel Cinamatic Universe")
                        .font(.headline)
                        .foregroundColor(.white)
                    NavigationLink(destination: PageView(userChoice: .constant(0))) {
                        Text("Start Story").foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
