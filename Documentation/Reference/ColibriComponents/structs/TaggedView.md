**STRUCT**

# `TaggedView`

```swift
public struct TaggedView<Tag, Body>: View, Identifiable where Tag: Hashable, Body: View
```

A view with any hashable type as a tag.

## Properties
### `id`

```swift
public let id: UUID
```

The identifier.

### `tag`

```swift
public var tag: Tag
```

The tag.

### `view`

```swift
var view: Body
```

The view.

### `body`

```swift
public var body: some View
```

The view body.

## Methods
### `init(tag:view:)`

```swift
public init(tag: Tag, @ViewBuilder view: () -> Body)
```

The initializer.
