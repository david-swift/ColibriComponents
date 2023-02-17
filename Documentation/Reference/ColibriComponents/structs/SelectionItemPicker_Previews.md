**STRUCT**

# `SelectionItemPicker_Previews`

```swift
struct SelectionItemPicker_Previews: PreviewProvider, View
```

The previews for the ``SelectionItemPicker``.

## Properties
### `previewWidth`

```swift
private static var previewWidth: CGFloat = 200
```

The width of the preview.

### `previewHeight`

```swift
private static var previewHeight: CGFloat = 100
```

The height of the preview.

### `previews`

```swift
static var previews: some View
```

The previews.

### `selection`

```swift
@State private var selection: UUID = .init()
```

The identifier of the selected item.

### `hover`

```swift
@State private var hover: UUID?
```

The identifier of the hovered item.

### `items`

```swift
let items: [SelectionItem] = [
    PreviewSelectionItem(id: .init(), title: "Snow", icon: .snowflake),
    PreviewSelectionItem(id: .init(), title: "Swift", icon: .swift)
]
```

The presented items.

### `body`

```swift
var body: some View
```

The view's body.
