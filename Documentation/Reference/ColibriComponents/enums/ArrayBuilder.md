**ENUM**

# `ArrayBuilder`

```swift
public enum ArrayBuilder<Element>
```

The ``ArrayBuilder`` is a simple result builder that outputs an array of any type.

You can define any array using Swift's DSL:
```swift
@ArrayBuilder<String> var string: [String] {
    "Hello, "
    if bool {
        "world!"
    } else {
        "colibri!"
    }
    for x in 0...10 {
        "\nIteration Number \(x)"
    }
}
```

## Methods
### `buildBlock(_:)`

```swift
public static func buildBlock(_ elements: Component...) -> Component
```

Build combined results from statement blocks.
- Parameter components: The components.
- Returns: The components in a component.

#### Parameters

| Name | Description |
| ---- | ----------- |
| components | The components. |

### `buildExpression(_:)`

```swift
public static func buildExpression(_ element: Element) -> Component
```

Translate an element into an ``ArrayBuilder.Component``.
- Parameter element: The element to translate.
- Returns: A component created from the element.

#### Parameters

| Name | Description |
| ---- | ----------- |
| element | The element to translate. |

### `buildExpression(_:)`

```swift
public static func buildExpression(_ component: Component) -> Component
```

Fetch a component.
- Parameter component: A component.
- Returns: The component.

#### Parameters

| Name | Description |
| ---- | ----------- |
| component | A component. |

### `buildOptional(_:)`

```swift
public static func buildOptional(_ component: Component?) -> Component
```

Enables support for `if` statements without an `else`.
- Parameter component: An optional component.
- Returns: A nonoptional component.

#### Parameters

| Name | Description |
| ---- | ----------- |
| component | An optional component. |

### `buildEither(first:)`

```swift
public static func buildEither(first component: Component) -> Component
```

Enables support for `if`-`else` and `switch` statements.
- Parameter component: A component.
- Returns: The component.

#### Parameters

| Name | Description |
| ---- | ----------- |
| component | A component. |

### `buildEither(second:)`

```swift
public static func buildEither(second component: Component) -> Component
```

Enables support for `if`-`else` and `switch` statements.
- Parameter component: A component.
- Returns: The component.

#### Parameters

| Name | Description |
| ---- | ----------- |
| component | A component. |

### `buildArray(_:)`

```swift
public static func buildArray(_ components: [Component]) -> Component
```

Enables support for `for..in` loops.
- Parameter components: The components as a two dimensional array.
- Returns: The components as a one dimensional array.

#### Parameters

| Name | Description |
| ---- | ----------- |
| components | The components as a two dimensional array. |

### `buildFinalResult(_:)`

```swift
public static func buildFinalResult(_ component: Component) -> [Element]
```

Convert a component to an array of elements.
- Parameter component: The component to convert.
- Returns: The generated array of elements.

#### Parameters

| Name | Description |
| ---- | ----------- |
| component | The component to convert. |