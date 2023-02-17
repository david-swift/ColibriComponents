//
//  TextField.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SwiftUI

extension TextField where Label == Text {

    /// The initializer of a text field supporting a localized title.
    /// - Parameters:
    ///   - title: The localized title.
    ///   - text: The binded value.
    public init(_ title: LocalizedStringResource, text: Binding<String>) {
        self.init(String(localized: title), text: text)
    }

}
