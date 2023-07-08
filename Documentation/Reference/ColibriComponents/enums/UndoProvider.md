**ENUM**

# `UndoProvider`

Register undo and redo actions.

An example implementation with a view model:
  ```swift
  class ViewModel: ObservableObject {
    @Published var text: String = "" {
        didSet {
            UndoProvider.registerUndo(withTarget: self, set: { $0.text = oldValue })
        }
    }
  }
  ```

## Methods
### `registerUndo(withTarget:undoManager:set:)`

Registers the undo and redo actions.
Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".
- Parameters:
  - target: The target object, usually the observable object with the property.
  - undoManager: If you do not want to use the key window's undo manager, specify one here.
  - set: The closure that assigns the old value to the property.
