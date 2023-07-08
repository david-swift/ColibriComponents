**ENUM**

# `ArrayBuilder`

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

Build combined results from statement blocks.
- Parameter components: The components.
- Returns: The components in a component.

### `buildExpression(_:)`

Translate an element into an ``ArrayBuilder.Component``.
- Parameter element: The element to translate.
- Returns: A component created from the element.

### `buildExpression(_:)`

Fetch a component.
- Parameter component: A component.
- Returns: The component.

### `buildOptional(_:)`

Enables support for `if` statements without an `else`.
- Parameter component: An optional component.
- Returns: A nonoptional component.

### `buildEither(first:)`

Enables support for `if`-`else` and `switch` statements.
- Parameter component: A component.
- Returns: The component.

### `buildEither(second:)`

Enables support for `if`-`else` and `switch` statements.
- Parameter component: A component.
- Returns: The component.

### `buildArray(_:)`

Enables support for `for..in` loops.
- Parameter components: The components as a two dimensional array.
- Returns: The components as a one dimensional array.

### `buildFinalResult(_:)`

Convert a component to an array of elements.
- Parameter component: The component to convert.
- Returns: The generated array of elements.
