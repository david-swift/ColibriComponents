//
//  CommandMenu.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SwiftUI

extension CommandMenu {

    /// The initializer of a command menu supporting a localized title.
    /// - Parameters:
    ///   - nameKey: The localized title.
    ///   - content: The menu's content.
    public init(_ nameKey: LocalizedStringResource, @ViewBuilder content: () -> Content) {
        self.init(String(localized: nameKey), content: content)
    }

}
