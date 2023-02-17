**STRUCT**

# `SelectionSymbolBackground`

```swift
struct SelectionSymbolBackground: ViewModifier
```

The background of a selection symbol.

## Properties
### `hover`

```swift
var hover: Bool
```

Whether it is hovered.

### `isSelected`

```swift
var isSelected = false
```

Whether it is selected.

### `color`

```swift
var color: Color
```

The background color.

### `opacity`

```swift
var opacity: Double
```

The background opacity.

## Methods
### `init(hover:isSelected:)`

```swift
init(hover: Bool, isSelected: Bool = false)
```

The initializer.
- Parameters:
  - hover: Whether it is hovered.
  - isSelected: Whether it is selected.

#### Parameters

| Name | Description |
| ---- | ----------- |
| hover | Whether it is hovered. |
| isSelected | Whether it is selected. |

### `body(content:)`

```swift
func body(content: Content) -> some View
```

The modifier's body.
- Parameter content: The content provided by the user.
- Returns: The modified view.

#### Parameters

| Name | Description |
| ---- | ----------- |
| content | The content provided by the user. |