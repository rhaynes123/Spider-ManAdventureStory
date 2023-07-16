//
//  ChoiceButtonStyle.swift
//  Spider-Man Adventure Story
//
//  Created by richard Haynes on 7/15/23.
//

import Foundation
import SwiftUI
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
