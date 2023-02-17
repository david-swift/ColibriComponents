**STRUCT**

# `ToolbarAction`

```swift
public struct ToolbarAction: Identifiable
```

A button in a custom toolbar.

## Properties
### `id`

```swift
public let id: UUID
```

The identifier of the toolbar action.

### `icon`

```swift
var icon: Image
```

The icon of the toolbar action.

### `title`

```swift
var title: String
```

The action's title.

### `action`

```swift
var action: () -> Void
```

The action.

### `isOn`

```swift
var isOn: Bool
```

Whether the toggle is activated.

## Methods
### `init(_:symbol:action:)`

```swift
public init(_ title: String, symbol: Image, action: @escaping () -> Void)
```

The initializer.
- Parameters:
  - title: The action's title.
  - symbol: The SF symbol.
  - action: The action's description.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The action’s title. |
| symbol | The SF symbol. |
| action | The action’s description. |

### `init(_:systemSymbol:action:)`

```swift
public init(_ title: String, systemSymbol: SFSymbol, action: @escaping () -> Void)
```

The initializer with an SF symbol.
- Parameters:
  - title: The action's title.
  - systemSymbol: The SF symbol.
  - action: The action's description.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The action’s title. |
| systemSymbol | The SF symbol. |
| action | The action’s description. |

### `body(padding:)`

```swift
func body(padding: Edge.Set) -> some View
```

The action's view.
- Parameter padding: The horizontal padding around the button.
- Returns: A view containing the action button.

#### Parameters

| Name | Description |
| ---- | ----------- |
| padding | The horizontal padding around the button. |

### `isOn(_:)`

```swift
public func isOn(_ isOn: Bool) -> Self
```

Add a binding to convert this action into a toggle.
- Parameter isOn: Whether the toggle is on.
- Returns: The toolbar action as a toggle.

#### Parameters

| Name | Description |
| ---- | ----------- |
| isOn | Whether the toggle is on. |