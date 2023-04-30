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
/// A wrapper around a scene observing the changes of a binding and registering the undo and redo actions:
/// ```swift
/// UndoProvider($test) { test in
///     ContentView(test: test)
/// }
/// ```
public struct UndoProvider<WrappedScene, Value>: Scene where WrappedScene: Scene, Value: ActionRepresentable {

    /// The undo manager used by the ``UndoProvider``.
    @Environment(\.undoManager) var undoManager
    /// The undo handler used by the ``UndoProvider``.
    @StateObject var handler: UndoHandler<Value> = UndoHandler()

    /// The wrapped scene.
    var wrappedScene: (Binding<Value>) -> WrappedScene
    /// The binded value.
    var binding: Binding<Value>

    /// The view body.
    public var body: some Scene {
        wrappedScene(self.interceptedBinding)
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
    ///   - wrappedScene: The wrapped scene.
    public init(_ binding: Binding<Value>, @SceneBuilder wrappedScene: @escaping (Binding<Value>) -> WrappedScene) {
        self.binding = binding
        self.wrappedScene = wrappedScene
        handler.binding = binding
        handler.undoManager = undoManager
    }

}
