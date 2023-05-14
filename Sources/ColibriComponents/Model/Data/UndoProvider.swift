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

import AppKit

/// Register undo and redo actions.
///
/// An example implementation with a view model:
///   ```swift
///   class ViewModel: ObservableObject {
///     @Published var text: String = "" {
///         didSet {
///             UndoProvider.registerUndo(withTarget: self, set: { $0.text = oldValue })
///         }
///     }
///   }
///   ```
public enum UndoProvider {

    /// Registers the undo and redo actions.
    /// Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".
    /// - Parameters:
    ///   - target: The target object, usually the observable object with the property.
    ///   - undoManager: If you do not want to use the key window's undo manager, specify one here.
    ///   - set: The closure that assigns the old value to the property.
    public static func registerUndo<TargetType>(
        withTarget target: TargetType,
        undoManager: UndoManager? = NSApplication.shared.keyWindow?.undoManager,
        set: @escaping (TargetType) -> Void
    ) where TargetType: AnyObject {
        undoManager?.registerUndo(withTarget: target) { target in
            set(target)
            registerUndo(withTarget: target) { set($0) }
        }
    }

}
