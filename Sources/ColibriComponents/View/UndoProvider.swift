//
//  UndoProvider.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//
//  Thanks to Matthaus Woolard for the article:
//  "Handling undo & redo in SwiftUI"
//  https://nilcoalescing.com/blog/HandlingUndoAndRedoInSwiftUI/ (28.09.20)
//

import SwiftUI

/// Registers the undo and redo actions of a binding.
/// Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".
///
/// A wrapper around a view observing the changes of a binding and registering the undo and redo actions:
/// ```swift
/// UndoProvider($test) { test in
///     ContentView(test: test)
/// }
/// ```
public struct UndoProvider<WrappedView, Value>: View where WrappedView: View, Value: ActionRepresentable {

    /// The undo manager used by the ``UndoProvider``.
    @Environment(\.undoManager) var undoManager
    /// The undo handler used by the ``UndoProvider``.
    @StateObject var handler: UndoHandler<Value> = UndoHandler()

    /// The wrapped view.
    var wrappedView: (Binding<Value>) -> WrappedView
    /// The binded value.
    var binding: Binding<Value>

    /// The view body.
    public var body: some View {
        wrappedView(self.interceptedBinding)
            .onAppear {
                handler.binding = binding
                handler.undoManager = undoManager
            }
            .onChange(of: undoManager) { undoManager in
                handler.undoManager = undoManager
            }
    }

    /// The binding observed to register the actions.
    var interceptedBinding: Binding<Value> {
        Binding {
            binding.wrappedValue
        } set: { newValue in
            handler.registerUndo(from: self.binding.wrappedValue, to: newValue)
            binding.wrappedValue = newValue
        }
    }

    /// The initializer.
    /// - Parameters:
    ///   - binding: The binded value.
    ///   - wrappedView: The wrapped view.
    public init(_ binding: Binding<Value>, @ViewBuilder wrappedView: @escaping (Binding<Value>) -> WrappedView) {
        self.binding = binding
        self.wrappedView = wrappedView
    }

}

/// The previews for the ``UndoProvider``.
struct UndoProvider_Previews: PreviewProvider, View {

    /// The previews.
    static var previews: some View {
        Self()
    }

    /// A test value that is action representable.
    @State private var test = Num(num: 1)

    /// The view's body.
    var body: some View {
        UndoProvider($test) { $test in
            Button("Observed Action: Multiply by \(test.num + 1)") {
                test.num *= test.num + 1
            }
            .padding()
        }
    }

    /// A type that conforms to ``ActionRepresentable`` for testing purposes.
    private struct Num: ActionRepresentable {

        /// The number of the
        var num: Int

        /// The action representation.
        /// - Parameters:
        ///   - oldValue: The value without the change.
        ///   - newValue: The value with the change.
        /// - Returns: The textual representation of the change.
        static func actionRepresentation(
            oldValue: UndoProvider_Previews.Num,
            newValue: UndoProvider_Previews.Num
        ) -> LocalizedStringResource {
            .init(
                "Change by \(newValue.num - oldValue.num)",
                comment: "UndoProvider (The localized change of a type for testing purposes.)"
            )
        }

    }

}
