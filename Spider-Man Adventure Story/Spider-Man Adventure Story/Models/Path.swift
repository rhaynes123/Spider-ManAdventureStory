//
//  Path.swift
//  Spider-Man Adventure Story
//
//  Created by richard Haynes on 7/15/23.
//

import Foundation
struct Path : Hashable {
    let storyText: String
    let choice1Text: String
    let choice1DestinationIndex: Int
    let choice2Text: String
    let choice2DestinationIndex: Int
    let storyImage: String
    let endOfStory: Bool
}
