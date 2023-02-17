//
//  Label.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SFSafeSymbols
import SwiftUI

extension Label where Title == Text, Icon == Image {

    /// The initializer of a label supporting a localized title.
    /// - Parameters:
    ///   - titleKey: The localized title.
    ///   - systemSymbol: The label's symbol.
    public init(_ titleKey: LocalizedStringResource, systemSymbol: SFSymbol) {
        self.init(String(localized: titleKey), systemSymbol: systemSymbol)
    }

}
