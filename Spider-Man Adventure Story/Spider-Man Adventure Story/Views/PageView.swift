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
                
                BackGroundImage(imageName: currentStoryPath.storyImage)
                
                VStack {
                    
                    Text(currentStoryPath.storyText)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .background(.ultraThinMaterial.opacity(0.9))
                        .cornerRadius(10)
                        .shadow(color: Color.black, radius: 10)
                    
                    
                    // MARK: Start Page Buttons
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
                        .buttonStyle(ChoiceButtonStyle(backGroundColor: .red))
                        // Path 2
                        NavigationLink(destination: PageView(userChoice: .constant(currentStoryPath.choice2DestinationIndex))) {
                            Text(currentStoryPath.choice2Text)
                                
                        }.buttonStyle(ChoiceButtonStyle(backGroundColor: .blue))
                    }
                    // MARK: End Page Buttons
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
