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

#if os(macOS)
import AppKit
#else
import UIKit
#endif

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

    #if os(macOS)
    /// The default undo manager for macOS.
    public static let defaultUndoManager = NSApplication.shared.keyWindow?.undoManager
    #else
    /// The default undo manager for iOS.
    public static let defaultUndoManager = UIApplication.shared.undoManager
    #endif

    /// Registers the undo and redo actions.
    /// Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".
    /// - Parameters:
    ///   - target: The target object, usually the observable object with the property.
    ///   - undoManager: If you do not want to use the key window's undo manager, specify one here.
    ///   - set: The closure that assigns the old value to the property.
    public static func registerUndo<TargetType>(
        withTarget target: TargetType,
        undoManager: UndoManager? = Self.defaultUndoManager,
        set: @escaping (TargetType) -> Void
    ) where TargetType: AnyObject {
        undoManager?.registerUndo(withTarget: target) { target in
            set(target)
            registerUndo(withTarget: target) { set($0) }
        }
    }

}
