//
//  CustomToolbarMenu.swift
//  ColibriComponents
//
//  Created by david-swift on 02.08.2023.
//

import SwiftUI

/// The button style of a custom toolbar action button.
struct CustomToolbarMenu: ButtonStyle {

    /// Whether the menu button is hovered.
    @State private var isHovered = false
    /// The opacity of the hover indicator.
    let backgroundOpacity = 0.2

    /// Create a button from a configuration.
    /// - Parameter configuration: The button configuration.
    /// - Returns: A view containing the button.
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            let padding = 5.0
            configuration.label
                .padding(.vertical, padding)
            Spacer()
        }
        .buttonStyle(CustomToolbarButton())
        .padding(.horizontal, .customToolbarPadding)
        .toolbarBackground(hover: isHovered, opacity: backgroundOpacity)
        .onHover { isHovered = $0 }
    }

}
