//
//  ActionRepresentable.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import Foundation

/// A type that can represent changes as a localized string.
public protocol ActionRepresentable {

    /// The representation of the change.
    /// - Parameters:
    ///   - oldValue: The value without the change.
    ///   - newValue: The value with the change.
    /// - Returns: The localized representation of the change.
    static func actionRepresentation(oldValue: Self, newValue: Self) -> LocalizedStringResource

}
