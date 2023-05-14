**EXTENSION**

# `Menu`
```swift
extension Menu where Label == Text
```

## Methods
### `init(_:content:primaryAction:)`

```swift
public init(
    _ title: LocalizedStringResource,
    @ViewBuilder content: @escaping () -> Content,
    primaryAction: @escaping () -> Void = { }
)
```

The initializer of a menu supporting a localized title.
- Parameters:
  - title: The localized title.
  - content: The content.
  - primaryAction: The primary action (empty by default).

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The localized title. |
| content | The content. |
| primaryAction | The primary action (empty by default). |