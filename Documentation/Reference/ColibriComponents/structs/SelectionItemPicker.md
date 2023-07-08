**STRUCT**

# `SelectionItemPicker`

A picker for an array of ``SelectionItem``.

## Properties
### `selection`

The active selection.

### `hover`

The active hover.

### `items`

The available items.

### `body`

The picker's view.

## Methods
### `init(selection:items:)`

An initializer for the ``SelectionItemPicker``.
- Parameters:
  - selection: The selected item's identifier.
  - items: The items.

### `iconView(_:)`

The icon of an item.
- Parameter item: The item.
- Returns: The icon of the item.

### `title(_:)`

The title of an item.
- Parameter item: The item.
- Returns: The title of the item.
