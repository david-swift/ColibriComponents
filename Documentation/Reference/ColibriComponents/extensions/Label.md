**EXTENSION**

# `Label`
```swift
extension Label where Title == Text, Icon == Image
```

## Methods
### `init(_:systemSymbol:)`

```swift
public init(_ titleKey: LocalizedStringResource, systemSymbol: SFSymbol)
```

The initializer of a label supporting a localized title.
- Parameters:
  - titleKey: The localized title.
  - systemSymbol: The label's symbol.

#### Parameters

| Name | Description |
| ---- | ----------- |
| titleKey | The localized title. |
| systemSymbol | The label’s symbol. |