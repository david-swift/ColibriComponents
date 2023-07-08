**STRUCT**

# `ToolbarAction`

A button in a custom toolbar.

## Properties
### `id`

The identifier of the toolbar action.

### `icon`

The icon of the toolbar action.

### `title`

The action's title.

### `action`

The action.

### `isOn`

Whether the toggle is activated.

## Methods
### `init(_:symbol:action:)`

The initializer.
- Parameters:
  - title: The action's title.
  - symbol: The SF symbol.
  - action: The action's description.

### `init(_:systemSymbol:action:)`

The initializer with an SF symbol.
- Parameters:
  - title: The action's title.
  - systemSymbol: The SF symbol.
  - action: The action's description.

### `body(padding:)`

The action's view.
- Parameter padding: The horizontal padding around the button.
- Returns: A view containing the action button.

### `isOn(_:)`

Add a binding to convert this action into a toggle.
- Parameter isOn: Whether the toggle is on.
- Returns: The toolbar action as a toggle.
