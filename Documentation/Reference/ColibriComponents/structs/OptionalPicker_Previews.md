**STRUCT**

# `OptionalPicker_Previews`

```swift
struct OptionalPicker_Previews: PreviewProvider, View
```

The SwiftUI previews for ``OptionalPicker``.

## Properties
### `previews`

```swift
static var previews: some View
```

The previews.

### `selection`

```swift
@State private var selection = "Snow"
```

The selected optional picker value.

### `body`

```swift
var body: some View
```

The view body.

### `snowLabel`

```swift
private var snowLabel: TaggedView<String, Label<Text, Image>>
```

The label for the snow picker value.

### `swiftLabel`

```swift
private var swiftLabel: TaggedView<String, Label<Text, Image>>
```

The label for the swift picker value.
