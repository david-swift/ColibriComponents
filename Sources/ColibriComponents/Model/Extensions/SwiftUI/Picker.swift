//
//  Picker.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SwiftUI

extension Picker where Label == Text {

    /// The initializer of a picker supporting a localized title.
    /// - Parameters:
    ///   - title: The localized title.
    ///   - selection: The selection.
    ///   - content: The content.
    public init(
        _ title: LocalizedStringResource,
        selection: Binding<SelectionValue>,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.init(String(localized: title), selection: selection, content: content)
    }

}
