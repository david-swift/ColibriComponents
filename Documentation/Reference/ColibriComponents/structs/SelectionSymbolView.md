**STRUCT**

# `SelectionSymbolView`

```swift
struct SelectionSymbolView<Item>: View where Item: SelectionItem
```

A single item for the ``SelectionItemPicker``.

## Properties
### `hover`

```swift
@Binding var hover: Bool
```

Whether the item is hovered.

### `isSelected`

```swift
var isSelected: Bool
```

Whether the item is selected.

### `item`

```swift
var item: Item
```

The item.

### `body`

```swift
var body: some View
```

The view.
