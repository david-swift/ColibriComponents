//
//  ExpressibleByStringLiteral.swift
//  ColibriComponents
//
//  Created by david-swift on 08.07.2023.
//

import Foundation
import SwiftUI

@available(macOS 13, *)
extension ExpressibleByStringLiteral where Self == String {

    /// Creates a localized string resource from a static string and its bundle properties.
    /// - Parameters:
    ///   - key: The key for an entry in the specified table.
    ///   - defaultValue: A localization value to use if key doesn’t exist in table.
    ///   - table: The name of the table containing the key-value pairs (default: `Localizable.strings`).
    ///   - locale: The locale for the resource to use. By default, the resource uses `current`.
    ///   - bundle: A bundle description that indicates where to locate the table’s strings file (default: main).
    ///   - comment: The comment to place above the key-value pair in the strings file.
    public init(
        _ key: StaticString,
        defaultValue: String.LocalizationValue,
        table: String? = nil,
        locale: Locale = .current,
        bundle: LocalizedStringResource.BundleDescription = .main,
        comment: StaticString? = nil
    ) {
        self = String(localized: .init(
            key,
            defaultValue: defaultValue,
            table: table,
            locale: locale,
            bundle: bundle,
            comment: comment
        ))
    }

    /// Creates a localized string resource from a localization key and its bundle properties.
    /// - Parameters:
    ///   - key: The key for an entry in the specified table.
    ///   - table: The name of the table containing the key-value pairs (default: `Localizable.strings`).
    ///   - locale: The locale for the resource to use. By default, the resource uses `current`.
    ///   - bundle: A bundle description that indicates where to locate the table’s strings file (default: main).
    ///   - comment: The comment to place above the key-value pair in the strings file.
    public init(
        _ keyAndValue: String.LocalizationValue,
        table: String? = nil,
        locale: Locale = .current,
        bundle: LocalizedStringResource.BundleDescription = .main,
        comment: StaticString? = nil
    ) {
        self = String(localized: .init(
            keyAndValue,
            table: table,
            locale: locale,
            bundle: bundle,
            comment: comment
        ))
    }

    /// Creates a localized string resource from the specified string literal.
    /// - Parameters:
    ///   - stringLiteral: The key to use when looking up a localized value.
    public init(
        stringLiteral: String
    ) {
        self = String(localized: .init(
            stringLiteral: stringLiteral
        ))
    }

    /// Creates an instance initialized to the given value.
    /// - Parameters:
    ///   - unicodeScalarLiteral: The value of the new instance.
    public init(
        unicodeScalarLiteral: String
    ) {
        self = String(localized: .init(
            unicodeScalarLiteral: unicodeScalarLiteral
        ))
    }

    /// Creates an instance initialized to the given value.
    /// - Parameters:
    ///   - extendedGraphemeClusterLiteral: The value of the new instance.
    public init(
        extendedGraphemeClusterLiteral: String
    ) {
        self = String(localized: .init(
            extendedGraphemeClusterLiteral: extendedGraphemeClusterLiteral
        ))
    }

    /// Creates an instance initialized to the given value.
    /// - Parameters:
    ///   - stringInterpolation: The key to use when looking up a localized value, created from a string interpolation.
    public init(
        stringInterpolation: String.LocalizationValue.StringInterpolation
    ) {
        self = String(localized: .init(
            stringInterpolation: stringInterpolation
        ))
    }

}

@available(macOS 13, *)
extension ExpressibleByStringLiteral where Self == LocalizedStringKey {

    /// Creates a localized string resource from a static string and its bundle properties.
    /// - Parameters:
    ///   - key: The key for an entry in the specified table.
    ///   - defaultValue: A localization value to use if key doesn’t exist in table.
    ///   - table: The name of the table containing the key-value pairs (default: `Localizable.strings`).
    ///   - locale: The locale for the resource to use. By default, the resource uses `current`.
    ///   - bundle: A bundle description that indicates where to locate the table’s strings file (default: main).
    ///   - comment: The comment to place above the key-value pair in the strings file.
    public init(
        _ key: StaticString,
        defaultValue: String.LocalizationValue,
        table: String? = nil,
        locale: Locale = .current,
        bundle: LocalizedStringResource.BundleDescription = .main,
        comment: StaticString? = nil
    ) {
        self = .init(stringLiteral: .init(localized: .init(
            key,
            defaultValue: defaultValue,
            table: table,
            locale: locale,
            bundle: bundle,
            comment: comment
        )))
    }

    /// Creates a localized string resource from a localization key and its bundle properties.
    /// - Parameters:
    ///   - key: The key for an entry in the specified table.
    ///   - table: The name of the table containing the key-value pairs (default: `Localizable.strings`).
    ///   - locale: The locale for the resource to use. By default, the resource uses `current`.
    ///   - bundle: A bundle description that indicates where to locate the table’s strings file (default: main).
    ///   - comment: The comment to place above the key-value pair in the strings file.
    public init(
        _ keyAndValue: String.LocalizationValue,
        table: String? = nil,
        locale: Locale = .current,
        bundle: LocalizedStringResource.BundleDescription = .main,
        comment: StaticString? = nil
    ) {
        self = .init(stringLiteral: .init(localized: .init(
            keyAndValue,
            table: table,
            locale: locale,
            bundle: bundle,
            comment: comment
        )))
    }

    /// Creates a localized string resource from the specified string literal.
    /// - Parameters:
    ///   - stringLiteral: The key to use when looking up a localized value.
    public init(
        stringLiteral: String
    ) {
        self = .init(stringLiteral: .init(localized: .init(
            stringLiteral: stringLiteral
        )))
    }

    /// Creates an instance initialized to the given value.
    /// - Parameters:
    ///   - unicodeScalarLiteral: The value of the new instance.
    public init(
        unicodeScalarLiteral: String
    ) {
        self = .init(stringLiteral: .init(localized: .init(
            unicodeScalarLiteral: unicodeScalarLiteral
        )))
    }

    /// Creates an instance initialized to the given value.
    /// - Parameters:
    ///   - extendedGraphemeClusterLiteral: The value of the new instance.
    public init(
        extendedGraphemeClusterLiteral: String
    ) {
        self = .init(stringLiteral: .init(localized: .init(
            extendedGraphemeClusterLiteral: extendedGraphemeClusterLiteral
        )))
    }

    /// Creates an instance initialized to the given value.
    /// - Parameters:
    ///   - stringInterpolation: The key to use when looking up a localized value, created from a string interpolation.
    public init(
        stringInterpolation: String.LocalizationValue.StringInterpolation
    ) {
        self = .init(stringLiteral: .init(localized: .init(
            stringInterpolation: stringInterpolation
        )))
    }

}
