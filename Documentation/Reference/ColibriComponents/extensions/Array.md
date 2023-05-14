**EXTENSION**

# `Array`
```swift
extension Array: Bindable
```

## Properties
### `body`

```swift
public var body: some View
```

The toolbar.

## Methods
### `checkIndex(_:)`

```swift
private func checkIndex(_ index: Int) -> Bool
```

Check if a given index is valid for the array.
- Parameter index: The index to test.
- Returns: Return whether the index is valid or not.

#### Parameters

| Name | Description |
| ---- | ----------- |
| index | The index to test. |

### `getIndex(id:)`

```swift
private func getIndex(id: Element.ID?) -> Int?
```

Get the index of an element with a specified identifier.
- Parameter id: The element's identifier.
- Returns: The index of the element.

#### Parameters

| Name | Description |
| ---- | ----------- |
| id | The element’s identifier. |