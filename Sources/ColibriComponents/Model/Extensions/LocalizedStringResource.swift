//
//  LocalizedStringResource.swift
//  ColibriComponents
//
//  Created by david-swift on 08.07.2023.
//

import Foundation

@available(macOS 13, *)
extension LocalizedStringResource {

    /// The localized string.
    public var localized: String {
        .init(localized: self)
    }

}
