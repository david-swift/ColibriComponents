**EXTENSION**

# `View`
```swift
extension View
```

## Methods
### `toolbarBackground(hover:isSelected:)`

```swift
internal func toolbarBackground(hover: Bool, isSelected: Bool = false) -> some View
```

The background of a custom toolbar item.
- Parameters:
  - hover: Whether it is hovered.
  - isSelected: Whether it is selected.
- Returns: The modified view.

#### Parameters

| Name | Description |
| ---- | ----------- |
| hover | Whether it is hovered. |
| isSelected | Whether it is selected. |

### `tagged(_:)`

```swift
public func tagged<Tag>(_ tag: Tag) -> TaggedView<Tag, Self>
```

Attach a tag to the view.
- Parameter tag: The hashable tag.
- Returns: The tagged view.

#### Parameters

| Name | Description |
| ---- | ----------- |
| tag | The hashable tag. |

### `customToolbarItem(padding:)`

```swift
internal func customToolbarItem(padding: Edge.Set) -> some View
```

Modifies the view for a custom toolbar item.
- Parameter padding: The horizontal padding of the item.
- Returns: A view containing the item.

#### Parameters

| Name | Description |
| ---- | ----------- |
| padding | The horizontal padding of the item. |

### `navigationTitle(_:)`

```swift
public func navigationTitle(_ title: LocalizedStringResource) -> some View
```

A SwiftUI navigation title but with a localized title.
- Parameter title: The localized title.
- Returns: A view with the navigation title.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The localized title. |

### `accessibilityLabel(_:)`

```swift
public func accessibilityLabel(_ title: LocalizedStringResource) -> some View
```

A SwiftUI accessibility label but with a localized title.
- Parameter title: The localized title.
- Returns: A view with the accessibility label.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The localized title. |

### `help(_:)`

```swift
public func help(_ message: LocalizedStringResource) -> some View
```

A SwiftUI help modifier but with a localized title.
- Parameter message: The localized message.
- Returns: A view with the help modifier.

#### Parameters

| Name | Description |
| ---- | ----------- |
| message | The localized message. |

### `geometry(_:)`

```swift
public func geometry(_ action: @escaping (GeometryProxy) -> Void) -> some View
```

Observe the geometry of the view.
- Parameter action: Get the geometry when the view appears and whenever the geometry changes.
- Returns: The view.

#### Parameters

| Name | Description |
| ---- | ----------- |
| action | Get the geometry when the view appears and whenever the geometry changes. |

### `freeformToolbar(visibility:x:y:_:)`

```swift
public func freeformToolbar(
    visibility: Bool,
    x xOffset: CGFloat = 0,
    y yOffset: CGFloat = 0,
    @ArrayBuilder<ToolbarAction> _ actions: @escaping () -> [ToolbarAction]
) -> some View
```

A toolbar in the style used in the  Freeform app.
It floats over another view.
https://support.apple.com/guide/freeform/welcome/mac
- Parameters:
  - visibility: The visibility of the toolbar.
  - xOffset: The offset on the x axis.
  - yOffset: The offset on the y axis.
  - _:  The toolbar actions.
- Returns: A view with the toolbar.

#### Parameters

| Name | Description |
| ---- | ----------- |
| visibility | The visibility of the toolbar. |
| xOffset | The offset on the x axis. |
| yOffset | The offset on the y axis. |
| _ | The toolbar actions. |