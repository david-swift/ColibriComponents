**STRUCT**

# `SelectionSymbolView_Previews`

```swift
struct SelectionSymbolView_Previews: PreviewProvider, View
```

The previews for the ``SelectionSymbolView``.

## Properties
### `previews`

```swift
static var previews: some View
```

The previews.

### `hover`

```swift
@State private var hover = false
```

Whether the item is hovered.

### `isSelected`

```swift
@State private var isSelected = false
```

Whether the item is selected.

### `item`

```swift
let item = SelectionItemPicker_Previews.PreviewSelectionItem(id: .init(), title: .init(), icon: .snowflake)
```

The item.

### `body`

```swift
var body: some View
```

The preview's view.
