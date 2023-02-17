**STRUCT**

# `Folder`

```swift
public struct Folder<Content>: Identifiable
```

A simple group of items with a title, an icon and an identifier.

Group multiple elements and provide a folder title, icon and identifier:
```swift
Folder("Group", systemSymbol: .tag) {
    "Hello"
    "World"
}
```

## Properties
### `id`

```swift
public let id: UUID
```

The unique identifier of the folder.

### `title`

```swift
public var title: String
```

The folder's title.

### `icon`

```swift
public var icon: Image
```

The folder's icon.

### `content`

```swift
public var content: [Content]
```

The folder's content.

## Methods
### `init(_:icon:content:id:)`

```swift
public init(_ title: String, icon: Image, @ArrayBuilder<Content> content: () -> [Content], id: UUID = .init())
```

The initializer of ``Folder``.
- Parameters:
  - title: The folder's title.
  - icon: The folder's icon.
  - content: The folder's content.
  - id: The folder's unique identifier.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The folder’s title. |
| icon | The folder’s icon. |
| content | The folder’s content. |
| id | The folder’s unique identifier. |

### `init(_:systemSymbol:content:id:)`

```swift
public init (
    _ title: String,
    systemSymbol: SFSymbol,
    @ArrayBuilder<Content> content: () -> [Content],
    id: UUID = .init()
)
```

The initializer with an SF Symbol.
- Parameters:
  - title: The folder's title.
  - systemSymbol: The SF Symbol.
  - content: The folder's content.
  - id: The folder's identifier.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The folder’s title. |
| systemSymbol | The SF Symbol. |
| content | The folder’s content. |
| id | The folder’s identifier. |