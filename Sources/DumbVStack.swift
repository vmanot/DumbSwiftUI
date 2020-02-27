//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

/// A VStack that doesn't try to be too smart for its own good.
public struct DumbVStack<Content: View>: View {
    private let content: Content
    private let alignment: HorizontalAlignment
    private let spacing: CGFloat
    
    public init(
        alignment: HorizontalAlignment = .center,
        spacing: CGFloat = 0,
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
        self.alignment = alignment
        self.spacing = spacing
    }
    
    public var body: some View {
        VStack(alignment: alignment, spacing: spacing, content: { content })
    }
}
