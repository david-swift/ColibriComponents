//
//  FreeformToolbarAction.swift
//  ColibriComponents
//
//  Created by david-swift on 06.02.23.
//

import SwiftUI

/// The view of an action in the Freeform toolbar.
struct FreeformToolbarAction: View {

    /// Whether the action is hovered.
    @State private var hover = false
    /// The toolbar action.
    var action: ToolbarAction

    /// The icon's foreground color.
    var foregroundColor: AnyShapeStyle {
        let color = action.isOn ? Color.accentColor : .primary.opacity(.freeformActionOpacity)
        if #available(macOS 13, *) {
            return .init(color.gradient)
        } else {
            return .init(color)
        }
    }

    /// The view's body.
    var body: some View {
        Button {
            action.action()
        } label: {
            Circle()
                .frame(width: .freeformBackgroundSidelength, height: .freeformBackgroundSidelength)
                .foregroundColor(.secondary.opacity(hover ? .freeformBackgroundOpacity : 0))
                .overlay {
                    if #available(macOS 13, *) {
                        action.icon
                            .frame(width: .freeformForegroundSidelength, height: .freeformForegroundSidelength)
                            .foregroundStyle(foregroundColor)
                    } else {
                        action.icon
                            .frame(width: .freeformForegroundSidelength, height: .freeformForegroundSidelength)
                            .foregroundStyle(
                                action.isOn ? Color.accentColor : Color.primary.opacity(.freeformActionOpacity)
                            )
                    }
                }
        }
        .buttonStyle(.plain)
        .onHover { hover = $0 }
        .help(action.title)
    }

    /// Initialize a Freeform toolbar action view.
    /// - Parameter action: The action.
    init(_ action: ToolbarAction) {
        self.action = action
    }

}

/// Previews for the ``FreeFormToolbarAction``.
struct FreeFormToolbarAction_Previews: PreviewProvider {

    /// The previews.
    static var previews: some View {
        FreeformToolbarAction(
            .init(
                "Test \(Double.freeformBackgroundOpacity)",
                symbol: .init(systemSymbol: .return)
            ) { }
        )
    }

}
