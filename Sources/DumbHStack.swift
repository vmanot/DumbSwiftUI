//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

/// An HStack that doesn't try to be too smart for its own good.
public struct DumbHStack<Content: View>: View {
    private let content: Content
    private let alignment: VerticalAlignment
    private let spacing: CGFloat
    
    public init(
        alignment: VerticalAlignment = .center,
        spacing: CGFloat = 0,
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
        self.alignment = alignment
        self.spacing = spacing
    }
    
    public var body: some View {
        HStack(alignment: alignment, spacing: spacing, content: { content })
    }
}
