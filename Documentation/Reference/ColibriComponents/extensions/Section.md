**EXTENSION**

# `Section`
```swift
extension Section where Parent == Text, Content: View, Footer == EmptyView
```

## Methods
### `init(_:content:)`

```swift
public init(_ title: LocalizedStringResource, @ViewBuilder content: () -> Content)
```

The initializer of a section supporting a localized title.
- Parameters:
  - title: The localized title.
  - content: The content.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The localized title. |
| content | The content. |