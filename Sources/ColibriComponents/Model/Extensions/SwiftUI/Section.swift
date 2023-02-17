//
//  Section.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SwiftUI

extension Section where Parent == Text, Content: View, Footer == EmptyView {

    /// The initializer of a section supporting a localized title.
    /// - Parameters:
    ///   - title: The localized title.
    ///   - content: The content.
    public init(_ title: LocalizedStringResource, @ViewBuilder content: () -> Content) {
        self.init(String(localized: title), content: content)
    }

}
