//
//  EmojiMemoryGame.swift
//  CS193p 2023 lecture1
//
//  Created by kwon eunji on 10/22/23.
//  view model

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["👻", "🎃", "🕷️", "😈", "💀", "🕸️", "🧙‍♀️", "🙀", "👹", "😱", "☠️", "🍭"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 9) { pairIndex in emojis[pairIndex]}
    }
    
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}
