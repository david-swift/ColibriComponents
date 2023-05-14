**EXTENSION**

# `Picker`
```swift
extension Picker where Label == Text
```

## Methods
### `init(_:selection:content:)`

```swift
public init(
    _ title: LocalizedStringResource,
    selection: Binding<SelectionValue>,
    @ViewBuilder content: @escaping () -> Content
)
```

The initializer of a picker supporting a localized title.
- Parameters:
  - title: The localized title.
  - selection: The selection.
  - content: The content.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The localized title. |
| selection | The selection. |
| content | The content. |