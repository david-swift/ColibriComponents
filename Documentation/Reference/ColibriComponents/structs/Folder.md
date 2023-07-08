**STRUCT**

# `Folder`

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

The unique identifier of the folder.

### `title`

The folder's title.

### `icon`

The folder's icon.

### `content`

The folder's content.

## Methods
### `init(_:icon:content:id:)`

The initializer of ``Folder``.
- Parameters:
  - title: The folder's title.
  - icon: The folder's icon.
  - content: The folder's content.
  - id: The folder's unique identifier.

### `init(_:systemSymbol:content:id:)`

The initializer with an SF Symbol.
- Parameters:
  - title: The folder's title.
  - systemSymbol: The SF Symbol.
  - content: The folder's content.
  - id: The folder's identifier.
