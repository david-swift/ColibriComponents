**STRUCT**

# `SelectionItemPicker`

```swift
public struct SelectionItemPicker<Item>: View where Item: SelectionItem
```

A picker for an array of ``SelectionItem``.

## Properties
### `selection`

```swift
@Binding var selection: Item.Identifier
```

The active selection.

### `hover`

```swift
@State private var hover: Item.Identifier?
```

The active hover.

### `items`

```swift
var items: [Item]
```

The available items.

### `body`

```swift
public var body: some View
```

The picker's view.

## Methods
### `init(selection:items:)`

```swift
public init(selection: Binding<Item.Identifier>, items: [Item])
```

An initializer for the ``SelectionItemPicker``.
- Parameters:
  - selection: The selected item's identifier.
  - items: The items.

#### Parameters

| Name | Description |
| ---- | ----------- |
| selection | The selected item’s identifier. |
| items | The items. |

### `iconView(_:)`

```swift
private func iconView(_ item: Item) -> some View
```

The icon of an item.
- Parameter item: The item.
- Returns: The icon of the item.

#### Parameters

| Name | Description |
| ---- | ----------- |
| item | The item. |

### `title(_:)`

```swift
private func title(_ item: Item) -> some View
```

The title of an item.
- Parameter item: The item.
- Returns: The title of the item.

#### Parameters

| Name | Description |
| ---- | ----------- |
| item | The item. |