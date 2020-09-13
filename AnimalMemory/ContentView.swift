//
//  ContentView.swift
//  AnimalMemory
//
//  Created by Stephen Astels on 2020-09-13.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Animal Memory")
        Spacer()
        Button(action: {}) {
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
