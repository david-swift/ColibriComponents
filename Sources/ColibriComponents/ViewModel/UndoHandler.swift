//
//  UndoHandler.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//
//  Thanks to Matthaus Woolard for the article:
//  "Handling undo & redo in SwiftUI"
//  https://nilcoalescing.com/blog/HandlingUndoAndRedoInSwiftUI/ (28.09.20)
//

import SwiftUI

/// Registers the undo and redo actions.
/// Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".
class UndoHandler<Value>: ObservableObject where Value: ActionRepresentable {

    /// The value that supports undo and redo as a binding.
    var binding: Binding<Value>?
    /// The UndoManager used by the UndoHandler.
    weak var undoManager: UndoManager?

    /// Registers the undo and redo actions.
    /// - Parameters:
    ///   - oldValue: The value without the change.
    ///   - newValue: The value with the change.
    ///   - redo: Whether it's a redo action.
    func registerUndo(from oldValue: Value, to newValue: Value, redo: Bool = false) {
        undoManager?.registerUndo(withTarget: self) { handler in
            handler.registerUndo(from: newValue, to: oldValue, redo: true)
            handler.binding?.wrappedValue = oldValue
        }
        undoManager?.setActionName(
            String(localized: Value.actionRepresentation(
                oldValue: redo ? newValue : oldValue,
                newValue: redo ? oldValue : newValue
            ))
        )
    }

}
