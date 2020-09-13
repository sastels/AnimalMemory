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
        Tile(title: "A", backgroundColor: Color.red)
        Tile(title: "B", backgroundColor: Color.blue)
      }
      HStack(spacing:0) {
        Tile(title: "C", backgroundColor: Color.green)
        Tile(title: "D", backgroundColor: Color.yellow)
      }
    }
  }
}

struct Board_Previews: PreviewProvider {
  static var previews: some View {
    Board()
  }
}
