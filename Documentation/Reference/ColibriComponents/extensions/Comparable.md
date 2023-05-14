**EXTENSION**

# `Comparable`
```swift
extension Comparable
```

## Methods
### `map(in:)`

```swift
public mutating func map(in range: ClosedRange<Self>)
```

Check if the value is in a certain range and, if not, change it to be in the range.
- Parameter range: The closed range.

Change a comparable type so it is in a certain range:
```swift
var value = 10
value.map(in: 0...5)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| range | The closed range. |

### `map(in:)`

```swift
public mutating func map(in range: Range<Self>)
```

Check if the value is in a certain range and, if not, change it to be in the range.
- Parameter range: The range.

#### Parameters

| Name | Description |
| ---- | ----------- |
| range | The range. |