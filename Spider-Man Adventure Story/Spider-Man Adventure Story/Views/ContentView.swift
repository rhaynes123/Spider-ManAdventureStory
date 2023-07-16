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
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
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
                    .buttonStyle(ChoiceButtonStyle(backGroundColor: .blue))
                    .shadow(color: Color.black.opacity(0.3), radius: 10)
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
