//
//  CustomToolbarButton.swift
//  ColibriComponents
//
//  Created by david-swift on 21.01.23.
//

import SwiftUI

/// The button style of a custom toolbar action button.
struct CustomToolbarButton: ButtonStyle {

    /// Create a button from a configuration.
    /// - Parameter configuration: The button configuration.
    /// - Returns: A view containing the button.
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .accentColor : .primary)
            .scaleEffect(configuration.isPressed ? .customToolbarButtonNotPressedScale : 1)
            .animation(.default, value: configuration.isPressed)
    }

}
