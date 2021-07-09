//
//  memory_gameApp.swift
//  memory-game
//
//  Created by Filipe Souza on 08/07/21.
//

import SwiftUI

@main
struct memory_gameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
