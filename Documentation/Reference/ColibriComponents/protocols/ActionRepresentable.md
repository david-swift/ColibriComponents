**PROTOCOL**

# `ActionRepresentable`

```swift
public protocol ActionRepresentable
```

A type that can represent changes as a localized string.

## Methods
### `actionRepresentation(oldValue:newValue:)`

```swift
static func actionRepresentation(oldValue: Self, newValue: Self) -> LocalizedStringResource
```

The representation of the change.
- Parameters:
  - oldValue: The value without the change.
  - newValue: The value with the change.
- Returns: The localized representation of the change.

#### Parameters

| Name | Description |
| ---- | ----------- |
| oldValue | The value without the change. |
| newValue | The value with the change. |