**STRUCT**

# `UndoProvider`

```swift
public struct UndoProvider<WrappedView, Value>: View where WrappedView: View, Value: ActionRepresentable
```

Registers the undo and redo actions of a binding.
Thanks to Matthaus Woolard for the article "Handling undo & redo in SwiftUI".

A wrapper around a view observing the changes of a binding and registering the undo and redo actions:
```swift
UndoProvider($test) { test in
    ContentView(test: test)
}
```

## Properties
### `undoManager`

```swift
@Environment(\.undoManager) var undoManager
```

The undo manager used by the ``UndoProvider``.

### `handler`

```swift
@StateObject var handler: UndoHandler<Value> = UndoHandler()
```

The undo handler used by the ``UndoProvider``.

### `wrappedView`

```swift
var wrappedView: (Binding<Value>) -> WrappedView
```

The wrapped view.

### `binding`

```swift
var binding: Binding<Value>
```

The binded value.

### `body`

```swift
public var body: some View
```

The view body.

### `interceptedBinding`

```swift
var interceptedBinding: Binding<Value>
```

The binding observed to register the actions.

## Methods
### `init(_:wrappedView:)`

```swift
init(_ binding: Binding<Value>, @ViewBuilder wrappedView: @escaping (Binding<Value>) -> WrappedView)
```

The initializer.
- Parameters:
  - binding: The binded value.
  - wrappedView: The wrapped view.

#### Parameters

| Name | Description |
| ---- | ----------- |
| binding | The binded value. |
| wrappedView | The wrapped view. |