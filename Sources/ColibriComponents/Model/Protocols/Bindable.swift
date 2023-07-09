//
//  Bindable.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SwiftUI

/// Protocol to track the changes of a binding.
///
/// Create a binding by adding a setter to a value:
/// ```swift
/// TextField(
///     "Test",
///     text: text.binding { newValue in
///         print(newValue)
///     }
/// )
/// ```
public protocol Bindable { }

extension Bindable {

    /// Convert a bindable value to a binding with a custom set clause.
    /// - Parameter set: The function with the value as a parameter used as the set of the binding.
    /// - Returns: The binding with the custom set behaviour.
    public func binding(_ set: @escaping (Self) -> Void) -> Binding<Self> {
        .init(get: { self }, set: set)
    }

}

/// The previews for ``Bindable``.
struct Bindable_Previews: PreviewProvider, View {

    /// The previews.
    static var previews: some View {
        Self()
    }

    /// A variable for testing purposes.
    @State private var text = ""

    /// The view's body.
    var body: some View {
        TextField(
            "Test",
            text: text.binding { newValue in
                print(newValue)
                text = newValue
            }
        )
    }

}
