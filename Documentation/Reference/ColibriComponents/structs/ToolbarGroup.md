**STRUCT**

# `ToolbarGroup`

A group of buttons in a custom toolbar.

## Properties
### `id`

The identifier of the toolbar action group.

### `actions`

Actions  in the group.

### `addSpacer`

Whether there is a spacer after the group.

### `hover`

Whether the toolbar group is hovered. If true, the background color changes.

### `body`

The group's view.

### `rectangle`

A rounded rectangle used for the background and stroke of a toolbar group.

## Methods
### `init(_:)`

The initializer of ``ToolbarGroup``.
- Parameters:
  - _: The actions.

### `spacer()`

Create a spacer after this action.
- Returns: The action with the spacer.

### `padding(index:)`

Get the padding of the action button at a certain position.
- Parameter index: The position.
- Returns: A set containing the edges with padding.
