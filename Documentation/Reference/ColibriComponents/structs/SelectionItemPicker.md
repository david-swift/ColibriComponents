**STRUCT**

# `SelectionItemPicker`

```swift
public struct SelectionItemPicker: View
```

A picker for an array of ``SelectionItem``.

## Properties
### `selection`

```swift
@Binding var selection: UUID
```

The active selection.

### `hover`

```swift
@State private var hover: UUID?
```

The active hover.

### `items`

```swift
var items: [SelectionItem]
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
public init(selection: Binding<UUID>, items: [SelectionItem])
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
private func iconView(_ item: SelectionItem) -> some View
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
private func title(_ item: SelectionItem) -> some View
```

The title of an item.
- Parameter item: The item.
- Returns: The title of the item.

#### Parameters

| Name | Description |
| ---- | ----------- |
| item | The item. |