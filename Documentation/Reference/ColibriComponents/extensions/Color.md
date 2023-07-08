**EXTENSION**

# `Color`

## Properties
### `red`

The red RGBA value of the color.

### `green`

The green RGBA value of the color.

### `blue`

The blue RGBA value of the color.

### `alpha`

The alpha RGBA value of the color.

## Methods
### `init(from:)`

Initialize a color from encoded data.
- Parameter decoder: Decodes the RGB values from a native format into in-memory representations.

### `encode(to:)`

Encode a color into a native format for external representation.
- Parameter encoder: Encodes the RGBA value.

### `getRGBA(_:)`

Get a certain RGBA value.
- Parameter color: The value that is searched for (red, green, blue or alpha).
- Returns: The value.
