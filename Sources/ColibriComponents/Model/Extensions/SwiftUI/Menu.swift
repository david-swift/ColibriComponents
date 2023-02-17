//
//  Menu.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SwiftUI

extension Menu where Label == Text {

    /// The initializer of a menu supporting a localized title.
    /// - Parameters:
    ///   - title: The localized title.
    ///   - content: The content.
    ///   - primaryAction: The primary action (empty by default).
    public init(
        _ title: LocalizedStringResource,
        @ViewBuilder content: @escaping () -> Content,
        primaryAction: @escaping () -> Void = { }
    ) {
        self.init(String(localized: title), content: content, primaryAction: primaryAction)
    }

}
