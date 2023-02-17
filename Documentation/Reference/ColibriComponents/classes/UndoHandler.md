**CLASS**

# `UndoHandler`

```swift
class UndoHandler<Value>: ObservableObject where Value: ActionRepresentable
```

Registers the undo and redo actions.
Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".

## Properties
### `binding`

```swift
var binding: Binding<Value>?
```

The value that supports undo and redo as a binding.

### `undoManager`

```swift
weak var undoManager: UndoManager?
```

The UndoManager used by the UndoHandler.

## Methods
### `registerUndo(from:to:)`

```swift
func registerUndo(from oldValue: Value, to newValue: Value)
```

Registers the undo and redo actions.
- Parameters:
  - oldValue: The value without the change.
  - newValue: The value with the change.

#### Parameters

| Name | Description |
| ---- | ----------- |
| oldValue | The value without the change. |
| newValue | The value with the change. |