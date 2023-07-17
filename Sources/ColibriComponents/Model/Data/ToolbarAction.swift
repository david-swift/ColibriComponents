//
//  ToolbarAction.swift
//  ColibriComponents
//
//  Created by david-swift on 21.01.23.
//

import SFSafeSymbols
import SwiftUI

/// A button in a custom toolbar.
public struct ToolbarAction: Identifiable {

    /// The identifier of the toolbar action.
    public let id: UUID
    /// The icon of the toolbar action.
    var icon: Image
    /// The action's title.
    var title: String
    /// The action.
    var action: () -> Void
    /// Whether the toggle is activated.
    var isOn: Bool

    /// The initializer.
    /// - Parameters:
    ///   - title: The action's title.
    ///   - symbol: The SF symbol.
    ///   - action: The action's description.
    public init(_ title: String, symbol: Image, action: @escaping () -> Void) {
        id = .init()
        self.icon = symbol
        self.title = title
        self.action = action
        isOn = false
    }

    /// The initializer with an SF symbol.
    /// - Parameters:
    ///   - title: The action's title.
    ///   - systemSymbol: The SF symbol.
    ///   - action: The action's description.
    public init(_ title: String, systemSymbol: SFSymbol, action: @escaping () -> Void) {
        self.init(title, symbol: .init(systemSymbol: systemSymbol), action: action)
    }

    /// The action's view.
    /// - Parameter padding: The horizontal padding around the button.
    /// - Returns: A view containing the action button.
    func body(padding: Edge.Set) -> some View {
        Button {
            action()
        } label: {
            Label {
                Text(title)
            } icon: {
                icon
            }
            .customToolbarItem(padding: padding)
        }
        .buttonStyle(CustomToolbarButton())
        .help(title)
    }

    /// Add a binding to convert this action into a toggle.
    /// - Parameter isOn: Whether the toggle is on.
    /// - Returns: The toolbar action as a toggle.
    public func isOn(_ isOn: Bool) -> Self {
        var newSelf = self
        newSelf.isOn = isOn
        return newSelf
    }

}
