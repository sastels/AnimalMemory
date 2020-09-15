//
//  Tile.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import AVFoundation
import SwiftUI

struct Tile: View {
  @EnvironmentObject var game: GameEngine

  var data: TileData
  @State private var audioPlayer: AVAudioPlayer?
  @State private var isActive = false

  var body: some View {
    let backgroundColor = isActive ? .white : data.color
    return (Button(action: {
      if !self.game.inputLocked {
        self.isActive = true
        print("Pressed \(self.data.image)")
        self.data.playSound()
        Timer.scheduledTimer(withTimeInterval: self.data.soundDuration!, repeats: false) { _ in
          self.isActive = false
        }
        self.game.CheckGuess(guess: self.data.title)
      }
    }) {
      Image(data.image).resizable().scaledToFit()
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .padding()
        .background(backgroundColor)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(data.color, lineWidth: 8))
    }.buttonStyle(PlainButtonStyle()))
  }
}

struct Tile_Previews: PreviewProvider {
  static var previews: some View {
    Tile(data: TileData(title: "A", color: .red, sound: "cat", image: "cat"))
  }
}
