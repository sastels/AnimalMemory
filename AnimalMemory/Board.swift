//
//  Board.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct Board: View {
  let tiles = [
    TileData(title: "A", color: .red, sound: "cat"),
    TileData(title: "B", color: .purple, sound: "dog"),
    TileData(title: "C", color: .green, sound: "cow"),
    TileData(title: "D", color: .yellow, sound: "horse"),
  ]
  
  var body: some View {
    VStack {
      HStack(spacing:0) {
        Tile(data: tiles[0])
        Tile(data: tiles[1])
      }
      HStack(spacing:0) {
        Tile(data: tiles[2])
        Tile(data: tiles[3])
      }
    }
  }
}

struct Board_Previews: PreviewProvider {
  static var previews: some View {
    Board()
  }
}
