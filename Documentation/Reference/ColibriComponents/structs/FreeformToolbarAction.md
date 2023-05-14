**STRUCT**

# `FreeformToolbarAction`

```swift
struct FreeformToolbarAction: View
```

The view of an action in the Freeform toolbar.

## Properties
### `hover`

```swift
@State private var hover = false
```

Whether the action is hovered.

### `action`

```swift
var action: ToolbarAction
```

The toolbar action.

### `body`

```swift
var body: some View
```

The view's body.

## Methods
### `init(_:)`

```swift
init(_ action: ToolbarAction)
```

Initialize a Freeform toolbar action view.
- Parameter action: The action.

#### Parameters

| Name | Description |
| ---- | ----------- |
| action | The action. |