**STRUCT**

# `OptionalPicker`

A picker but with the option to not select any presented value.

A picker but it is possible to not select any of the presented values:
```swift
OptionalPicker("Value", selection: $selection, defaultValue: "Hello") {
    Label("Snow", systemSymbol: .snowflake)
        .tagged("Snow")
    Label("Swift", systemSymbol: .swift)
        .tagged("Swift")
}
```

## Properties
### `selection`

The active selection.

### `titleKey`

The picker's title.

### `labels`

The options' labels.

### `defaultValue`

The value that is selected if there is no valid value selected.

### `body`

The picker's view.

## Methods
### `init(_:selection:defaultValue:labels:)`

The initializer.
- Parameters:
  - titleKey: The title.
  - selection: The active selection.
  - defaultValue: The selected value if there is no valid value selected.
  - labels: The options.
