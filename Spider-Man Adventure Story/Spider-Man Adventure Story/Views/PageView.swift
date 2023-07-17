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
                    
                    buildStoryNavigation(currentStoryPath: currentStoryPath)
                }
            }
        }
    }
    
    private func buildStoryNavigation(currentStoryPath: Path) -> some View {
        return VStack {
            if currentStoryPath.endOfStory {
                NavigationLink(destination: ContentView()){
                    Text("Play Again")
                }.buttonStyle(ChoiceButtonStyle(backGroundColor: .blue))
            }
            else {
                // Path 1
                buildNavigationLink(choiceIndex: currentStoryPath.choice1DestinationIndex, choiceText: currentStoryPath.choice1Text, color: .red)
                
                // Path 2
                buildNavigationLink(choiceIndex: currentStoryPath.choice2DestinationIndex, choiceText: currentStoryPath.choice2Text, color: .blue)
            }
        }
    }
    
    private func buildNavigationLink(choiceIndex : Int, choiceText : String, color : Color ) -> some View {
        NavigationLink(destination: PageView(userChoice: .constant(choiceIndex))) {
            Text(choiceText)
        }.buttonStyle(ChoiceButtonStyle(backGroundColor: color))
    }
}




struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(userChoice: .constant(0))
    }
}
