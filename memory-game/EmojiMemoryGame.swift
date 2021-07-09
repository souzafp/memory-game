//
//  EmojiMemoryGame.swift
//  memory-game
//
//  Created by Filipe Souza on 08/07/21.
//

import SwiftUI


class EmojiMemoryGame {
    //private(set) like a glass door
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK - Access to the Model - More security then used glass door
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    // MARK - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
