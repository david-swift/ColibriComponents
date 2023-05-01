**ENUM**

# `UndoProvider`

Register undo and redo actions.

An example implementation with a view model:
  ```swift
  class ViewModel: ObservableObject {
    @Published var text = "" {
        didSet {
            UndoProvider.registerUndo(withTarget: self, set: { $0.text = oldValue })
        }
    }
  }
  ```

## Methods
### `registerUndo(withTarget:set:)`

Registers the undo and redo actions.
Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".
- Parameters:
  - target: The target object, usually the observable object with the property.
  - set: The closure that assigns the old value to the property.
