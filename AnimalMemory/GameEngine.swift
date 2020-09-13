//
//  GameEngine.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import AVFoundation
import Foundation

struct GameEngine {
  var tiles: [TileData]
  var sequence: [Int]
  var audioPlayer: AVAudioPlayer?

  init() {
    sequence = [0, 1, 0, 0]
    tiles = [
      TileData(title: "A", color: .red, sound: "cat", image: "cat"),
      TileData(title: "B", color: .purple, sound: "dog", image: "dog"),
      TileData(title: "C", color: .green, sound: "cow", image: "cow"),
      TileData(title: "D", color: .yellow, sound: "horse", image: "horse"),
    ]
  }

  mutating func nowGame() {
    sequence = []
  }

  mutating func NextSequence() {
    sequence.append(Int.random(in: 0..<4))
    print("Next sequence: \(sequence)")
  }

  mutating func playSequence() {
    var time = 0.0

    for tileIndex in sequence {
      let audio = tiles[tileIndex].audioPlayer
      Timer.scheduledTimer(withTimeInterval: time, repeats: false) { _ in
        audio?.play()
      }
      time += 0.1 + tiles[tileIndex].soundDuration!
    }
  }
}
