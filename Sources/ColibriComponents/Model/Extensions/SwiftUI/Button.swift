//
//  Button.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SFSafeSymbols
import SwiftUI

@available(macOS 13, *)
extension Button where Label == SwiftUI.Label<Text, Image> {

    /// A cancel button.
    /// - Parameter action: The action that is executed when the button is being tapped.
    /// - Returns: A view containing the button inclusive keyboard shortcut.
    public static func cancelButton(action: @escaping () -> Void) -> some View {
        Button(role: .cancel, action: action) {
            Label(.init("Cancel", comment: "Button (Name of a cancel button)"), systemSymbol: .xmark)
        }
        .keyboardShortcut(.cancelAction)
    }

    /// A default action button.
    /// - Parameters:
    ///   - title: The button's title.
    ///   - symbol: The symbol of the button.
    ///   - action: The action that is executed when the button is being tapped.
    /// - Returns: A view containing the button inclusive keyboard shortcut.
    public static func defaultButton(
        _ title: LocalizedStringResource,
        symbol: SFSymbol,
        action: @escaping () -> Void
    ) -> some View {
        Button(action: action) {
            SwiftUI.Label(title.localized, systemSymbol: symbol)
        }
        .keyboardShortcut(.defaultAction)
    }

    /// A default action button for adding items.
    /// - Parameter action: The action that is executed when the button is being tapped.
    /// - Returns: A view containing the button inclusive keyboard shortcut.
    public static func addButton(action: @escaping () -> Void) -> some View {
        defaultButton(.init("Add", comment: "Button (Name of add button)"), symbol: .plus, action: action)
    }

    /// A default action button for confirming entered data.
    /// - Parameter action: The action that is executed when the button is being tapped.
    /// - Returns: A view containing the button inclusive keyboard shortcut.
    public static func confirmationButton(action: @escaping () -> Void) -> some View {
        defaultButton(
            .init("Confirm", comment: "Button (Name of confirmation button)"),
            symbol: .arrowTurnDownLeft,
            action: action
        )
    }

    /// A delete button.
    /// - Parameter action: The action that is executed when the button is being tapped.
    /// - Returns: A view containing the button inclusive keyboard shortcut.
    public static func deleteButton(action: @escaping () -> Void) -> some View {
        Button(role: .destructive, action: action) {
            Label(.init("Delete", comment: "Button (Name of delete button)"), systemSymbol: .deleteLeft)
        }
        .keyboardShortcut(.delete)
    }

}

/// Previews for the predefined buttons.
@available(macOS 13, *)
struct Button_Previews: PreviewProvider {

    /// The previews.
    static var previews: some View {
        Button.addButton {
            print("Add")
        }
    }

}
