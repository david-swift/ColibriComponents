//
//  SelectionSymbolBackground.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SwiftUI

/// The background of a selection symbol.
struct SelectionSymbolBackground: ViewModifier {

    /// Whether it is hovered.
    var hover: Bool
    /// Whether it is selected.
    var isSelected = false
    /// The opacity of the background when hovered.
    var hoverBackgroundOpacity: Double = .hoveredSymbolBackgroundOpacity

    /// The background color.
    var color: Color { isSelected ? .accentColor : .secondary }
    /// The background opacity.
    var opacity: Double {
        isSelected ? .selectionSymbolBackgroundOpacity : (hover ? hoverBackgroundOpacity : 0)
    }

    /// The modifier's body.
    /// - Parameter content: The content provided by the user.
    /// - Returns: The modified view.
    func body(content: Content) -> some View {
        content
            .background(color.opacity(opacity), in: RoundedRectangle(cornerRadius: .colibriCornerRadius))
            .animation(.default.speed(.hoverAnimationSpeed), value: hover)
            .animation(.default, value: isSelected)
    }

}
