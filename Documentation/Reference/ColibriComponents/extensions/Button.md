**EXTENSION**

# `Button`

## Methods
### `init(_:role:action:)`

Initialize a button with a localized title key.
- Parameters:
  - titleKey: A localized title key.
  - role: The button role if there is one, else nil. The default value is nil.
  - action: The action that is executed when the button is being tapped.

### `cancelButton(action:)`

A cancel button.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

### `defaultButton(_:symbol:action:)`

A default action button.
- Parameters:
  - title: The button's title.
  - symbol: The symbol of the button.
  - action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

### `addButton(action:)`

A default action button for adding items.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

### `confirmationButton(action:)`

A default action button for confirming entered data.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

### `deleteButton(action:)`

A delete button.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.
