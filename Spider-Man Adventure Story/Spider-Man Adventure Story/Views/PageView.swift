//
//  PageView.swift
//  Spider-Man Adventure Story
//
//  Created by richard Haynes on 7/14/23.
//
/*
 https://www.youtube.com/watch?v=MLBm77WXE98
 https://github.com/Nordo00/AdventureStory
 */
import SwiftUI

struct PageView: View {
    @Binding var userChoice: Int
    
    var body: some View {
        
        let currentStoryPage : Story = stories[userChoice]
        NavigationStack {
            ZStack {
                Image("spiderman-headshot")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text(currentStoryPage.storyText)
                        .foregroundColor(.cyan)
                        .cornerRadius(10)
                        .font(.body)
                    Image(currentStoryPage.storyImage)
                        .resizable()
                        .scaledToFit()
                    
                    if currentStoryPage.endOfStory {
                        NavigationLink(destination: ContentView()){
                            Text("Start Over")
                        }.buttonStyle(ChoiceButtonStyle(backGroundColor: .blue))
                    }
                    else {
                        // Story 1
                        NavigationLink(destination: PageView(userChoice: .constant(currentStoryPage.choice1Destination))) {
                            Text(currentStoryPage.choice1)
                        }
                        .buttonStyle(ChoiceButtonStyle(backGroundColor: .gray))
                        
                        // Story 2
                        NavigationLink(destination: PageView(userChoice: .constant(currentStoryPage.choice2Destination))) {
                            Text(currentStoryPage.choice2)
                                
                        }.buttonStyle(ChoiceButtonStyle(backGroundColor: .blue))
                    }
                    
                }
            }
        }
    }
}

struct ChoiceButtonStyle : ButtonStyle {
    var backGroundColor : Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(backGroundColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(userChoice: .constant(0))
    }
}
