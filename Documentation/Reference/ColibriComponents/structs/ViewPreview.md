**STRUCT**

# `ViewPreview`

```swift
struct ViewPreview: PreviewProvider, View
```

The previews for the ``geometry(_:)`` view modifier.

## Properties
### `previews`

```swift
static var previews: some View
```

The previews.

### `size`

```swift
@State private var size: CGSize = .zero
```

A variable with the size of the view.

### `body`

```swift
var body: some View
```

The view's body.
