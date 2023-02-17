**EXTENSION**

# `Color`
```swift
extension Color: Codable
```

## Properties
### `red`

```swift
public var red: CGFloat
```

The red RGBA value of the color.

### `green`

```swift
public var green: CGFloat
```

The green RGBA value of the color.

### `blue`

```swift
public var blue: CGFloat
```

The blue RGBA value of the color.

### `alpha`

```swift
public var alpha: CGFloat
```

The alpha RGBA value of the color.

## Methods
### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

Initialize a color from encoded data.
- Parameter decoder: Decodes the RGB values from a native format into in-memory representations.

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | Decodes the RGB values from a native format into in-memory representations. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

Encode a color into a native format for external representation.
- Parameter encoder: Encodes the RGBA value.

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | Encodes the RGBA value. |

### `getRGBA(_:)`

```swift
internal func getRGBA(_ color: RGBA) -> CGFloat
```

Get a certain RGBA value.
- Parameter color: The value that is searched for (red, green, blue or alpha).
- Returns: The value.

#### Parameters

| Name | Description |
| ---- | ----------- |
| color | The value that is searched for (red, green, blue or alpha). |