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
        
        let currentStoryPath : Path = Story.paths[userChoice]
        NavigationStack {
            ZStack {
                Image("spiderman-headshot")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text(currentStoryPath.storyText)
                        .foregroundColor(.cyan)
                        .cornerRadius(10)
                        .font(.body)
                    Image(currentStoryPath.storyImage)
                        .resizable()
                        .scaledToFit()
                    
                    if currentStoryPath.endOfStory {
                        NavigationLink(destination: ContentView()){
                            Text("Play Again")
                        }.buttonStyle(ChoiceButtonStyle(backGroundColor: .blue))
                    }
                    else {
                        // Path 1
                        NavigationLink(destination: PageView(userChoice: .constant(currentStoryPath.choice1DestinationIndex))) {
                            Text(currentStoryPath.choice1Text)
                        }
                        .buttonStyle(ChoiceButtonStyle(backGroundColor: .gray))
                        
                        // Path 2
                        NavigationLink(destination: PageView(userChoice: .constant(currentStoryPath.choice2DestinationIndex))) {
                            Text(currentStoryPath.choice2Text)
                                
                        }.buttonStyle(ChoiceButtonStyle(backGroundColor: .blue))
                    }
                    
                }
            }
        }
    }
}



struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(userChoice: .constant(0))
    }
}
