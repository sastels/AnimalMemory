//
//  TileData.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import AVFoundation
import Foundation
import SwiftUI

struct TileData {
  var title: String
  var color: Color
  var sound: String
  var soundDuration: Double?
  var image: String
  var audioPlayer: AVAudioPlayer?

  init(title: String, color: Color, sound: String, image: String) {
    self.title = title
    self.color = color
    self.sound = sound
    self.image = image
    if let path = Bundle.main.path(forResource: sound, ofType: ".mp3") {
      let url = URL(fileURLWithPath: path)
      do {
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        soundDuration = audioPlayer?.duration
      } catch {}
    }
  }

  func playSound() {
    if let audioPlayer = audioPlayer {
      print("playing \(sound) Duration: \(soundDuration!)")
      audioPlayer.prepareToPlay()
      audioPlayer.play()
    } else {
      print("No sound for \(sound)!")
    }
  }
}
