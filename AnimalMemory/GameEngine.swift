//
//  GameEngine.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import Foundation
import AVFoundation

struct GameEngine {
  var tiles: [TileData]
  var sequence: [Int]
  var audioPlayer: AVAudioPlayer?

  init() {
    sequence = []
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
  
    if let path = Bundle.main.path(forResource: "cat", ofType: ".mp3") {
      let url = URL(fileURLWithPath: path)
      do {
        self.audioPlayer?.stop()
        self.audioPlayer = try AVAudioPlayer(contentsOf: url)
        print("duration: \(self.audioPlayer!.duration)")
        self.audioPlayer?.play()
      } catch {}
    }

    print("Played sequence 1!")
    
    
    let queuePlayer = AVQueuePlayer()
    
    let url1 = URL(fileURLWithPath: Bundle.main.path(forResource: "cat", ofType: ".mp3")!)
    let item1 = AVPlayerItem(url: url1)
    queuePlayer.insert(item1, after: nil)
    
    let url2 = URL(fileURLWithPath: Bundle.main.path(forResource: "dog", ofType: ".mp3")!)
    let item2 = AVPlayerItem(url: url2)
    queuePlayer.insert(item2, after: nil)
        
    queuePlayer.play()
    
    print("Played sequence 2!")
    
  }
}
