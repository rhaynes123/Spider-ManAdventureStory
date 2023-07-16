//
//  BackGroundImage.swift
//  Spider-Man Adventure Story
//
//  Created by richard Haynes on 7/16/23.
//

import Foundation
import SwiftUI
struct BackGroundImage : View {
    var imageName : String
    init(imageName: String) {
        self.imageName = imageName
    }
    var body : some View {
        Image(imageName)
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .edgesIgnoringSafeArea(.all)
    }
}
