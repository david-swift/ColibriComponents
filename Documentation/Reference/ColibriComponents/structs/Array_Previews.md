**STRUCT**

# `Array_Previews`

```swift
struct Array_Previews: PreviewProvider, View
```

The previews for an array with ``ToolbarGroup`` as the element type.

## Properties
### `previews`

```swift
static var previews: some View
```

The previews.

### `toolbar`

```swift
@ArrayBuilder<ToolbarGroup> var toolbar: [ToolbarGroup]
```

The toolbar groups.

### `testCount`

```swift
@State private var testCount = 0
```

A variable for testing purposes.

### `body`

```swift
var body: some View
```

The view's body.
