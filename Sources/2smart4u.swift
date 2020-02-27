//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

extension View {
    @available(*, deprecated, message: "2smart4u")
    public func padding(_ edges: Edge.Set = .all) -> some View {
        self
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello.")
            .padding()
    }
}
