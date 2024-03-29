//
//  SelectionItemPicker.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SFSafeSymbols
import SwiftUI

/// A picker for an array of ``SelectionItem``.
public struct SelectionItemPicker<Item>: View where Item: SelectionItem {

    /// The active selection.
    @Binding var selection: Item.Identifier
    /// The active hover.
    @State private var hover: Item.Identifier?
    /// The available items.
    var items: [Item]

    /// The picker's view.
    public var body: some View {
        LazyVGrid(columns: [.init(.adaptive(minimum: .selectionItemPickerMinimumWidth))]) {
            ForEach(items, id: \.id) { item in
                Button {
                    selection = item.id
                } label: {
                    VStack {
                        iconView(item)
                        title(item)
                        Spacer()
                    }
                    .padding()
                    .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
            }
        }
    }

    /// An initializer for the ``SelectionItemPicker``.
    /// - Parameters:
    ///   - selection: The selected item's identifier.
    ///   - items: The items.
    public init(selection: Binding<Item.Identifier>, items: [Item]) {
        self._selection = selection
        self.items = items
    }

    /// The icon of an item.
    /// - Parameter item: The item.
    /// - Returns: The icon of the item.
    private func iconView(_ item: Item) -> some View {
        SelectionSymbolView(
            hover: (hover == item.id).binding { newValue in
                if newValue {
                    hover = item.id
                } else if hover == item.id {
                    hover = nil
                }
            },
            isSelected: selection == item.id,
            item: item
        )
    }

    /// The title of an item.
    /// - Parameter item: The item.
    /// - Returns: The title of the item.
    private func title(_ item: Item) -> some View {
        Text(item.title)
            .font(.caption)
            .foregroundColor(selection == item.id ? .accentColor : .primary)
            .lineLimit(.selectionItemPickerLineLimit)
            .minimumScaleFactor(.minimumSelectionItemPickerScaleFactor)
    }

}

/// The previews for the ``SelectionItemPicker``.
struct SelectionItemPicker_Previews: PreviewProvider, View {

    /// The width of the preview.
    private static var previewWidth: CGFloat = 200
    /// The height of the preview.
    private static var previewHeight: CGFloat = 100

    /// The previews.
    static var previews: some View {
        Self()
            .frame(width: previewWidth, height: previewHeight)
    }

    /// The identifier of the selected item.
    @State private var selection: UUID = .init()
    /// The identifier of the hovered item.
    @State private var hover: UUID?
    /// The presented items.
    let items: [PreviewSelectionItem] = [
        PreviewSelectionItem(id: .init(), title: "Snow", icon: .snowflake),
        PreviewSelectionItem(id: .init(), title: "Swift", icon: .swift)
    ]

    /// The view's body.
    var body: some View {
        SelectionItemPicker(selection: $selection, items: items)
    }

    /// An example selection item type.
    struct PreviewSelectionItem: SelectionItem {

        /// The identifier.
        let id: UUID
        /// The title.
        var title: String
        /// The icon.
        var icon: SFSymbol

    }

}
