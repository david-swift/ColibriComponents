//
//  SelectionItem.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SFSafeSymbols
import SwiftUI

/// A type that can be used in a ``SelectionItemPicker``.
public protocol SelectionItem {

    /// The identifier.
    var id: UUID { get }
    /// The title.
    var title: String { get set }
    /// The icon.
    var icon: SFSymbol { get }

}
