//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

///
/// Dumber than UIKit?
/// https://developer.apple.com/documentation/uikit/uiviewcontroller/1621851-navigationitem
///
public struct DumbNavigationView<Content: View, Leading: View, Trailing: View> {
    private let content: Content
    private let trailing: Trailing
    private let title: String
    private let leading: Leading
    
    public init(
        leading: Leading,
        title: String,
        trailing: Trailing,
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
        self.trailing = trailing
        self.title = title
        self.leading = leading
    }
}
