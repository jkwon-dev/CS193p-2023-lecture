//
//  CS193p_2023_lecture1App.swift
//  CS193p 2023 lecture1
//
//  Created by kwon eunji on 2023/10/16.
//

import SwiftUI

@main
struct CS193p_2023_lecture1App: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
