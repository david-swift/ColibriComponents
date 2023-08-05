//
//  ToolbarMenu.swift
//  ColibriComponents
//
//  Created by david-swift on 02.08.2023.
//

import SFSafeSymbols
import SwiftUI

/// A button in a custom toolbar.
public struct ToolbarMenu<Content>: ToolbarActionProtocol where Content: View {

    /// The identifier of the toolbar menu.
    public let id: UUID
    /// The icon of the toolbar menu.
    var icon: Image
    /// The menu's title.
    var title: String
    /// The content.
    var content: Content
    /// A toolbar menu is never activated.
    public var isOn: Bool { false }

    /// The initializer.
    /// - Parameters:
    ///   - title: The action's title.
    ///   - symbol: The SF symbol.
    ///   - action: The action's description.
    public init(_ title: String, symbol: Image, @ViewBuilder content: @escaping () -> Content) {
        id = .init()
        self.icon = symbol
        self.title = title
        self.content = content()
    }

    /// The initializer with an SF symbol.
    /// - Parameters:
    ///   - title: The action's title.
    ///   - systemSymbol: The SF symbol.
    ///   - action: The action's description.
    public init(_ title: String, systemSymbol: SFSymbol, @ViewBuilder content: @escaping () -> Content) {
        self.init(title, symbol: .init(systemSymbol: systemSymbol), content: content)
    }

    /// A menu view for macOS 12.
    private struct ToolbarMenuView<Label, ContentView>: View where Label: View, ContentView: View {

        /// Whether the menu is presented.
        @State private var isPresented = false
        /// The menu button's label.
        var label: Label
        /// The menu's content.
        var content: ContentView
        /// Additional padding.
        var padding: Edge.Set

        /// The view's body.
        var body: some View {
            Button {
                isPresented.toggle()
            } label: {
                let offset = 10.0
                label
                    .offset(y: offset)
                    .popover(isPresented: $isPresented) {
                        content
                            .buttonStyle(CustomToolbarMenu())
                            .padding(.customToolbarPadding)
                    }
                    .offset(y: -offset)
                    .customToolbarItem(padding: padding)
            }
        }

    }

    /// The action's view.
    /// - Parameter padding: The horizontal padding around the button.
    /// - Returns: A view containing the action button.
    public func body(padding: Edge.Set) -> AnyView {
        let label = Label {
            Text(title)
        } icon: {
            icon
        }

        return .init(
            Group {
                if #available(macOS 13, *) {
                    Menu {
                        content
                    } label: {
                        label
                            .customToolbarItem(padding: padding)
                    }
                    .menuStyle(.button)
                } else {
                    ToolbarMenuView(label: label, content: content, padding: padding)
                }
            }
            .buttonStyle(CustomToolbarButton())
            .help(title)
        )
    }

}
