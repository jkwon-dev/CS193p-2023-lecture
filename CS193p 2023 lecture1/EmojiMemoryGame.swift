//
//  EmojiMemoryGame.swift
//  CS193p 2023 lecture1
//
//  Created by kwon eunji on 10/22/23.
//  view model

import SwiftUI


class EmojiMemoryGame {
    static let emojis = ["👻", "🎃", "🕷️", "😈", "💀", "🕸️", "🧙‍♀️", "🙀", "👹", "😱", "☠️", "🍭"]
    
    static func createMemoryGane() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in  emojis[pairIndex]
        }
    }
    
    
    private var model: MemoryGame<String> = createMemoryGane()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
