//
//  GameView.swift
//  Animations-Times Tables
//
//  Created by Randy Messo on 9/9/25.
//


import SwiftUI

struct GameView: View {
    
    var numberOfQuestion: Int
    var topTableNumber: Int
    
    var body: some View {
        Text("The questions are going to be 2 - \(topTableNumber) and \(numberOfQuestion) long")
    }
}
