//
//  Board.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct Board: View {
  @State var game = GameEngine()

  var body: some View {
    VStack {
      HStack(spacing:0) {
        Tile(data: game.tiles[0])
        Tile(data: game.tiles[1])
      }
      HStack(spacing:0) {
        Tile(data: game.tiles[2])
        Tile(data: game.tiles[3])
      }
    }.onAppear() {
//      self.game.playSequence()
    }
  }
}

struct Board_Previews: PreviewProvider {
  static var previews: some View {
    Board()
  }
}
