**STRUCT**

# `UndoProvider_Previews.Num`

```swift
private struct Num: ActionRepresentable
```

A type that conforms to ``ActionRepresentable`` for testing purposes.

## Properties
### `num`

```swift
var num: Int
```

The number of the

## Methods
### `actionRepresentation(oldValue:newValue:)`

```swift
static func actionRepresentation(
    oldValue: UndoProvider_Previews.Num,
    newValue: UndoProvider_Previews.Num
) -> LocalizedStringResource
```

The action representation.
- Parameters:
  - oldValue: The value without the change.
  - newValue: The value with the change.
- Returns: The textual representation of the change.

#### Parameters

| Name | Description |
| ---- | ----------- |
| oldValue | The value without the change. |
| newValue | The value with the change. |