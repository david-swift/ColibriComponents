//
//  ToolbarActionProtocol.swift
//  ColibriComponents
//
//  Created by david-swift on 02.08.2023.
//

import SwiftUI

/// A protocol for items in a custom or freeform toolbar's group.
public protocol ToolbarActionProtocol {

    /// The toolbar item's identifier.
    var id: UUID { get }
    /// Whether the toolbar item is activated (background visible).
    var isOn: Bool { get }
    /// The body view.
    /// - Parameter padding: Padding.
    /// - Returns: The view.
    func body(padding: Edge.Set) -> AnyView

}
