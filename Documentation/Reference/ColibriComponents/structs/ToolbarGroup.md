**STRUCT**

# `ToolbarGroup`

```swift
public struct ToolbarGroup: Identifiable, View
```

A group of buttons in a custom toolbar.

## Properties
### `id`

```swift
public let id: UUID
```

The identifier of the toolbar action group.

### `actions`

```swift
var actions: [ToolbarAction]
```

Actions  in the group.

### `addSpacer`

```swift
var addSpacer: Bool
```

Whether there is a spacer after the group.

### `hover`

```swift
@State private var hover = false
```

Whether the toolbar group is hovered. If true, the background color changes.

### `body`

```swift
public var body: some View
```

The group's view.

### `rectangle`

```swift
private var rectangle: RoundedRectangle
```

A rounded rectangle used for the background and stroke of a toolbar group.

## Methods
### `init(_:)`

```swift
public init(@ArrayBuilder<ToolbarAction> _ actions: () -> [ToolbarAction])
```

The initializer of ``ToolbarGroup``.
- Parameters:
  - _: The actions.

#### Parameters

| Name | Description |
| ---- | ----------- |
| _ | The actions. |

### `spacer()`

```swift
public func spacer() -> Self
```

Create a spacer after this action.
- Returns: The action with the spacer.

### `padding(index:)`

```swift
private func padding(index: Int) -> Edge.Set
```

Get the padding of the action button at a certain position.
- Parameter index: The position.
- Returns: A set containing the edges with padding.

#### Parameters

| Name | Description |
| ---- | ----------- |
| index | The position. |