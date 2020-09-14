//
//  GameEngine.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import AVFoundation
import Foundation

class GameEngine: ObservableObject {
  @Published var tiles: [TileData]
  @Published var sequence: [Int]
  var audioPlayer: AVAudioPlayer?
  var nextGuessIndex: Int
  
  init() {
    sequence = []
    nextGuessIndex = 0
    tiles = [
      TileData(title: "A", color: .red, sound: "cat", image: "cat"),
      TileData(title: "B", color: .purple, sound: "dog", image: "dog"),
      TileData(title: "C", color: .green, sound: "cow", image: "cow"),
      TileData(title: "D", color: .yellow, sound: "horse", image: "horse"),
    ]
    newGame()
  }

   func newGame() {
    sequence = []
    nextGuessIndex = 0
    nextSequence()
  }

   func nextSequence() {
    sequence.append(Int.random(in: 0..<4))
    nextGuessIndex = 0
    playSequence()
    print("Next sequence: \(sequence)")
  }

   func playSequence() {
    var time = 0.0

    for tileIndex in sequence {
      let audio = tiles[tileIndex].audioPlayer
      Timer.scheduledTimer(withTimeInterval: time, repeats: false) { _ in
        audio?.play()
      }
      time += 0.1 + tiles[tileIndex].soundDuration!
    }
  }
  
  @discardableResult func CheckGuess(guess: String) -> Bool {
    if tiles[sequence[nextGuessIndex]].title == guess {
      nextGuessIndex += 1
      if nextGuessIndex >= sequence.count {
        nextSequence()
      }
      return true
    } else {
      print("Wrong!")
      nextGuessIndex = 0
      return false
    }
  }
}
