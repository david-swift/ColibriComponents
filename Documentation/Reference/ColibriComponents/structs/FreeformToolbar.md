**STRUCT**

# `FreeformToolbar`

```swift
struct FreeformToolbar: View
```

A toolbar in the style used in the  Freeform app.
https://support.apple.com/guide/freeform/welcome/mac

## Properties
### `actions`

```swift
var actions: [ToolbarAction]
```

The actions in the toolbar.

### `body`

```swift
var body: some View
```

The view's body.

## Methods
### `init(actions:)`

```swift
init(@ArrayBuilder<ToolbarAction> actions: @escaping () -> [ToolbarAction])
```

Initialize a new toolbar.
- Parameter actions: The toolbar actions.

#### Parameters

| Name | Description |
| ---- | ----------- |
| actions | The toolbar actions. |