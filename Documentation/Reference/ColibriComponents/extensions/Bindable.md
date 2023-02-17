**EXTENSION**

# `Bindable`
```swift
extension Bindable
```

## Methods
### `binding(_:)`

```swift
public func binding(_ set: @escaping (Self) -> Void) -> Binding<Self>
```

Convert a bindable value to a binding with a custom set clause.
- Parameter set: The function with the value as a parameter used as the set of the binding.
- Returns: The binding with the custom set behaviour.

#### Parameters

| Name | Description |
| ---- | ----------- |
| set | The function with the value as a parameter used as the set of the binding. |