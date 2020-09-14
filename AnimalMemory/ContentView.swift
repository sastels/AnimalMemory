//
//  ContentView.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var game: GameEngine

  var body: some View {
    VStack {
      HStack {
        Button(action: { self.game.nextSequence() }) {
          Text("Next")
        }
        Spacer()
        Text("\(game.sequenceLength)")
        Spacer()
        Button(action: { self.game.newGame() }) {
          Text("Restart")
        }
      }.padding(10)
      Board()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
