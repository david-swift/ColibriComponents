//
//  View.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SwiftUI

extension View {

    /// The background of a custom toolbar item.
    /// - Parameters:
    ///   - hover: Whether it is hovered.
    ///   - isSelected: Whether it is selected.
    /// - Returns: The modified view.
    internal func toolbarBackground(hover: Bool, isSelected: Bool = false) -> some View {
        modifier(SelectionSymbolBackground(hover: hover, isSelected: isSelected))
    }

    /// Attach a tag to the view.
    /// - Parameter tag: The hashable tag.
    /// - Returns: The tagged view.
    public func tagged<Tag>(_ tag: Tag) -> TaggedView<Tag, Self> {
        TaggedView(tag: tag) { self }
    }

    /// Modifies the view for a custom toolbar item.
    /// - Parameter padding: The horizontal padding of the item.
    /// - Returns: A view containing the item.
    internal func customToolbarItem(padding: Edge.Set) -> some View {
        frame(width: .customToolbarSideLength, height: .customToolbarSideLength)
            .labelStyle(.iconOnly)
            .padding([.vertical, padding], .customToolbarPadding)
            .buttonStyle(.plain)
            .contentShape(Rectangle())
    }

    /// Observe the geometry of the view.
    /// - Parameter action: Get the geometry when the view appears and whenever the geometry changes.
    /// - Returns: The view.
    public func geometry(_ action: @escaping (GeometryProxy) -> Void) -> some View {
        overlay {
            GeometryReader { geometry in
                Color.clear
                    .onAppear {
                        action(geometry)
                    }
                    .onChange(of: geometry.size) { _ in
                        action(geometry)
                    }
                    .onChange(of: geometry.safeAreaInsets) { _ in
                        action(geometry)
                    }
                    .onChange(of: geometry.frame(in: .global)) { _ in
                        action(geometry)
                    }
            }
        }
    }

    /// A toolbar in the style used in the  Freeform app.
    /// It floats over another view.
    /// https://support.apple.com/guide/freeform/welcome/mac
    /// - Parameters:
    ///   - visibility: The visibility of the toolbar.
    ///   - xOffset: The offset on the x axis.
    ///   - yOffset: The offset on the y axis.
    ///   - _:  The toolbar actions.
    /// - Returns: A view with the toolbar.
    public func freeformToolbar(
        visibility: Bool,
        x xOffset: CGFloat = 0,
        y yOffset: CGFloat = 0,
        @ArrayBuilder<ToolbarAction> _ actions: @escaping () -> [ToolbarAction]
    ) -> some View {
        overlay {
            if visibility {
                FreeformToolbar(actions: actions)
                    .offset(x: xOffset, y: yOffset)
            }
        }
    }

}

/// The previews for the ``geometry(_:)`` view modifier.
struct ViewPreview: PreviewProvider, View {

    /// The previews.
    static var previews: some View {
        Self()
    }

    /// A variable with the size of the view.
    @State private var size: CGSize = .zero

    /// The view's body.
    var body: some View {
        Text("\(size.width), \(size.height)")
            .padding()
            .geometry { geometry in
                size = geometry.size
            }
    }

}
