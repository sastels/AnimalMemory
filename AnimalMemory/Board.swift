//
//  Board.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct Board: View {
  var body: some View {
    VStack {
      HStack(spacing:0) {
        Tile(title: "A", backgroundColor: .red)
        Tile(title: "B", backgroundColor: .blue)
      }
      HStack(spacing:0) {
        Tile(title: "C", backgroundColor: .green)
        Tile(title: "D", backgroundColor: .yellow)
      }
    }
  }
}

struct Board_Previews: PreviewProvider {
  static var previews: some View {
    Board()
  }
}
