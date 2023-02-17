//
//  Folder.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SFSafeSymbols
import SwiftUI

/// A simple group of items with a title, an icon and an identifier.
///
/// Group multiple elements and provide a folder title, icon and identifier:
/// ```swift
/// Folder("Group", systemSymbol: .tag) {
///     "Hello"
///     "World"
/// }
/// ```
public struct Folder<Content>: Identifiable {

    /// The unique identifier of the folder.
    public let id: UUID
    /// The folder's title.
    public var title: String
    /// The folder's icon.
    public var icon: Image
    /// The folder's content.
    public var content: [Content]

    /// The initializer of ``Folder``.
    /// - Parameters:
    ///   - title: The folder's title.
    ///   - icon: The folder's icon.
    ///   - content: The folder's content.
    ///   - id: The folder's unique identifier.
    public init(_ title: String, icon: Image, @ArrayBuilder<Content> content: () -> [Content], id: UUID = .init()) {
        self.id = id
        self.title = title
        self.icon = icon
        self.content = content()
    }

    /// The initializer with an SF Symbol.
    /// - Parameters:
    ///   - title: The folder's title.
    ///   - systemSymbol: The SF Symbol.
    ///   - content: The folder's content.
    ///   - id: The folder's identifier.
    public init (
        _ title: String,
        systemSymbol: SFSymbol,
        @ArrayBuilder<Content> content: () -> [Content],
        id: UUID = .init()
    ) {
        self.init(title, icon: .init(systemSymbol: systemSymbol), content: content, id: id)
    }

}
