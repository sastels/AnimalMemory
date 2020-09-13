//
//  Tile.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct Tile: View {
  var title: String
  var backgroundColor: Color
  var body: some View {
    Text(title)
      .frame(minWidth: 0,
             maxWidth: .infinity,
             minHeight: 0,
             maxHeight: .infinity,
             alignment: .center)
      .background(backgroundColor)
  }
}

struct Tile_Previews: PreviewProvider {
  static var previews: some View {
    Tile(title: "A", backgroundColor: Color.blue)
  }
}
