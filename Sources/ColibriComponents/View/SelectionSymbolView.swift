//
//  SelectionSymbolView.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SFSafeSymbols
import SwiftUI

/// A single item for the ``SelectionItemPicker``.
struct SelectionSymbolView<Item>: View where Item: SelectionItem {

    /// Whether the item is hovered.
    @Binding var hover: Bool
    /// Whether the item is selected.
    var isSelected: Bool
    /// The item.
    var item: Item

    /// The icon's foreground color.
    var foregroundColor: AnyShapeStyle {
        let color = isSelected ? Color.accentColor : .primary
        if #available(macOS 13, *) {
            return .init(color.gradient)
        } else {
            return .init(color)
        }
    }

    /// The view.
    var body: some View {
        Image(systemSymbol: item.icon)
            .accessibilityLabel(item.title)
            .foregroundStyle(foregroundColor)
            .font(.system(size: .selectionSymbolViewFontSize))
            .padding()
            .toolbarBackground(hover: hover, isSelected: isSelected)
            .contentShape(Rectangle())
            .onHover { hover = $0 }
    }

}

/// The previews for the ``SelectionSymbolView``.
struct SelectionSymbolView_Previews: PreviewProvider, View {

    /// The previews.
    static var previews: some View {
        Self()
            .padding()
    }

    /// Whether the item is hovered.
    @State private var hover = false
    /// Whether the item is selected.
    @State private var isSelected = false
    /// The item.
    let item = SelectionItemPicker_Previews.PreviewSelectionItem(id: .init(), title: .init(), icon: .snowflake)

    /// The preview's view.
    var body: some View {
        Button {
            isSelected.toggle()
        } label: {
            SelectionSymbolView(hover: $hover, isSelected: isSelected, item: item)
        }
        .buttonStyle(.plain)
    }

}
