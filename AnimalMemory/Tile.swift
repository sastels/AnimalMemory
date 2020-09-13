//
//  Tile.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI
import AVFoundation

struct Tile: View {
  var data: TileData
  @State private var audioPlayer: AVAudioPlayer?

  var body: some View {
    Button(action: {
      print("Pressed \(self.data.image)")
      self.data.playSound()
    }) {
      Image(data.image).resizable().scaledToFit()
      .frame(minWidth: 0,
             maxWidth: .infinity,
             minHeight: 0,
             maxHeight: .infinity,
             alignment: .center)
        .background(data.color)
    }.buttonStyle(PlainButtonStyle())
  }
}

struct Tile_Previews: PreviewProvider {
  static var previews: some View {
    Tile(data: TileData(title: "A", color: .red, sound: "cat", image: "cat"))
  }
}
