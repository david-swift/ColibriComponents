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
    ///   - set: The closure that assigns the old value to the property.
    public static func registerUndo<TargetType>(
        withTarget target: TargetType,
        set: @escaping (TargetType) -> Void
    ) where TargetType: AnyObject {
        NSApplication.shared.keyWindow?.undoManager?.registerUndo(withTarget: target, handler: set)
    }

}
