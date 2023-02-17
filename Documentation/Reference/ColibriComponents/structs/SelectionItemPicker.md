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
@Binding var hover: UUID?
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