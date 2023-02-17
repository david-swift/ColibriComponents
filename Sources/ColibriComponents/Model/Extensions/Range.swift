//
//  Range.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import Foundation

extension Range: Bindable {

    /// The upper bound of the closed range but editable.
    public var editableUpperBound: Bound {
        get {
            upperBound
        }
        set {
            if lowerBound < newValue {
                self = lowerBound..<newValue
            }
        }
    }

    /// The lower bound of the closed range but editable.
    public var editableLowerBound: Bound {
        get {
            lowerBound
        }
        set {
            if newValue < upperBound {
                self = newValue..<upperBound
            }
        }
    }

}
