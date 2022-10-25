//
//  ContentView.swift
//  ExDynamicproperty
//
//  Created by 김종권 on 2022/10/25.
//

import SwiftUI

struct ContentView: View {
  @Counter private var counter
  
  var body: some View {
    Button("Button, \(counter)") {
      counter += 1
    }
  }
}

@propertyWrapper
struct Counter: DynamicProperty {
  @State private var value = 0
  
  var wrappedValue: Int {
    get { return value }
    nonmutating set { value = newValue }
  }
}

// sample - nonmutating set
//struct Sample {
//  var val = 0
//
//  var computedVal: Int {
//    get { return val }
//    nonmutating set { val = newValue }
//  }
//}
