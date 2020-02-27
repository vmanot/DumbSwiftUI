//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

/// Because every modifier deserves to indent its child.
///
/// (Tabs over spaces, fight me.)
public struct Padding<Content: View>: View {
    private let content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        content.padding()
    }
}
