**EXTENSION**

# `View`

## Methods
### `toolbarBackground(hover:isSelected:opacity:)`

The background of a custom toolbar item.
- Parameters:
  - hover: Whether it is hovered.
  - isSelected: Whether it is selected.
- Returns: The modified view.

### `tagged(_:)`

Attach a tag to the view.
- Parameter tag: The hashable tag.
- Returns: The tagged view.

### `customToolbarItem(padding:)`

Modifies the view for a custom toolbar item.
- Parameter padding: The horizontal padding of the item.
- Returns: A view containing the item.

### `geometry(_:)`

Observe the geometry of the view.
- Parameter action: Get the geometry when the view appears and whenever the geometry changes.
- Returns: The view.

### `freeformToolbar(visibility:x:y:_:)`

A toolbar in the style used in the  Freeform app.
It floats over another view.
https://support.apple.com/guide/freeform/welcome/mac
- Parameters:
  - visibility: The visibility of the toolbar.
  - xOffset: The offset on the x axis.
  - yOffset: The offset on the y axis.
  - _:  The toolbar actions.
- Returns: A view with the toolbar.

### `customToolbarBackground(visible:)`

Style a view to fit into the custom toolbar.
- Parameter visible: The visibility of the background.
- Returns: The view with the background if visible is true, otherwise the view.
